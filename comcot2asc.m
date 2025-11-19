% This script is used to convert the output file (.dat, .dep) of COMCOT
% into .ASC format;
% coordinate data files, layer##_x.dat and layer##_y.dat should be created
% first before using this script, where ## stands for layer id.
% Output file: fname_out
% Modified by Cesar Jimenez 15 Set 2023

% Note:
% The ARC ASCII data has the following structure:
%   ncols 157
%   nrows 171
%   xllcorner -156.08749650000
%   yllcorner 18.870890200000
%   cellsize 0.00833300
%   0 0 1 1 1 2 3 3 5 6 8 9 12 14 18 21 25 30 35 41 47 53
%   59 66 73 79 86 92 97 102 106 109 112 113 113 113 111 109 106
%   103 98 94 89 83 78 72 67 61 56 51 46 41 37 32 29 25 22 19
%   etc...
% 
% where
%   ncols: refers to the number of columns in the gridded data;
%   nrows: refers to the number of rows in the gridded data;
%   xllcorner: refers to the western edge of the grided data;
%   yllcorner: refers to the southern edge of the grided data;
%   cellsize: refers to the resolution of the gridded data;
%   nodata_value: refers to the value that represents missing data, -9999;
%   line 7 to the end of data file:
%       These are the value of individual cell, typically representing 
%       elevation of a particular area.

% Updated on Oct 15 2012 (Xiaoming Wang, GNS)
%   - Use interpolation to obtain even spacing (COMCOT uses varying
%     grid spacing in y with spherical coordinates);
% Updated on Feb 23 2016 (Xiaoming Wang)
%   - add output range adjustment;
% Update on JAN 2020
% - for flow depth data: mark a grid as nodata if value less than threshold 

%function comcot2asc()

% cmax = 5; %change to adjust color scale
i_change = 1;
data_file = input('Input COMCOT data file name:','s');
x_file = input('Input X Coordinate file name (e.g.,layer##_x.dat):','s');
y_file = input('Input Y Coordinate file name (e.g.,layer##_y.dat):','s');
fname_out = input('Input output data file name:','s');

i_change = input('Modify the output range? (0-Yes, 1-No):');

if i_change~=0 & i_change~=1
    i_change = 1;
end
if i_change==0
    xs = input('Please input starting x coordinate:');
    xe = input('Please input ending x coordinate:');
    ys = input('Please input starting y coordinate:');
    ye = input('Please input ending y coordinate:');
end

%load bathymetry data

disp('Loading Data into Memory...');
% layer = load(data_file);
layer_x = load(x_file);
layer_y = load(y_file);
[X,Y] = meshgrid(layer_x,layer_y);

nx = length(layer_x);
ny = length(layer_y);

fid = fopen(data_file);
a = fscanf(fid,'%g',inf); % write all data into a column of matrix a.
fclose(fid);
layer = reshape(a,nx,ny);
clear a

% Interpolate comcot data to obtain even spacing;
dx = (layer_x(nx)-layer_x(1))/nx;
dy = (layer_y(ny)-layer_y(1))/ny;

cellsize = 0.5*(dx+dy);

if i_change == 0
    x = (xs:cellsize:xe)';
    y = (ys:cellsize:ye)';    
else
    x = (layer_x(1):cellsize:layer_x(nx))';
    y = (layer_y(1):cellsize:layer_y(ny))';
end

ncols = length(x);
nrows = length(y);

xllcorner = x(1)-cellsize/2.0;
yllcorner = y(1)-cellsize/2.0;


[Xasc,Yasc] = meshgrid(x,y);

dout = interp2(X,Y,layer',Xasc,Yasc);
dout = dout';

% MARK A GRID WITH BELOW-THRESHOLD VALUE AS NODATA
nodata_value = -9999;
% dc = 0.05; % THRESHOLD VALUE FOR FLOW DEPTH
% [nx,ny] = size(dout);
% for j = 1:ny
%     for i = 1:nx
%         if dout(i,j) < dc
%             dout(i,j) = nodata_value;
%         end
%     end
% end

% save data in ASC-format
disp('Writing data into a file in *.ASC format ...');

fname_out = strrep(fname_out,'.asc','');

fid = fopen([fname_out,'.asc'],'w+');
fprintf(fid,'ncols         %d\n',ncols);
fprintf(fid,'nrows         %d\n',nrows);
fprintf(fid,'xllcorner     %f\n',xllcorner);
fprintf(fid,'yllcorner     %f\n',yllcorner);
fprintf(fid,'cellsize      %14.8f\n',cellsize);
fprintf(fid,'NODATA_value  %d\n',nodata_value);
%write data body
%for j = nrows:-1:1
for j = 1:nrows
%     for i = 1:ncols
        fprintf(fid,'%f ',dout(:,j));
        fprintf(fid,'\n');
%     end
end
fclose(fid);

xa = 0 : ncols-1; xa = cellsize * xa; xa = xa + xllcorner;
ya = 0 : nrows-1; ya = cellsize * ya; ya = ya + yllcorner;

xd = xa; yd = ya;
save xyd.mat xd yd -mat
