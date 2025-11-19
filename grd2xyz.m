% Cambiar de formato grd de TUNAMI a xyz (lon lat z)
% Creado por Cesar Jimenez 12 Set 2023
% Modificado: 20 Oct 2025

clear, clc, close all
help grd2xyz.m
dir *.grd
fname = input ('Archivo de grilla grid_x.grd: ','s');
A = load(fname);
grilla = input ('Elegir grilla: ','s');
eval(['load xy',grilla]);
eval(['xa = x',grilla,';']);
eval(['ya = y',grilla,';']);

if fname(1:6) == 'deform'
    load xyo.mat
    xa = xa(IDS:IDE);
    ya = ya(JDS:JDE);
end

[m n] = size(A);
[lon, lat]=meshgrid(xa,ya);
A = A';
fname2 = [fname(1:end-4),'.xyz'];
fid = fopen(fname2,'w');
nt = m*n;
for k = 1:1:nt % 5 para restringir las grillas
    fprintf(fid,'%10.6f %10.6f %8.3f\n',lon(k),lat(k),A(k));
end

fclose (fid);

if fname(1:6) == 'deform'
   A = -A;
end
hold on
pcolor(xa-360,ya,-A), shading flat, axis equal, grid on
contour(xa-360,ya,A,[0 0],'k'), axis equal, grid on
figure, mesh(lon, lat, -A), grid on

