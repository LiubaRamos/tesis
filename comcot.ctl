#################################################
#                                               #
# Control file for COMCOT program (v1.7)        #
#                                               #
#################################################
#--+-----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
#===============================================:===============================
# General Parameters for Simulation             : Value Field                  |
#===============================================:===============================
# Job Description: around the Globe simulation test
 Total run time (Wall clock, seconds)           :  3600.000
 Time interval to Save Data    ( unit: sec )    :  300.000
 Output Zmax & TS (0-Max Z;1-Timeseries;2-Both) :  2
 Start Type (0-Cold start; 1-Hot start)         :  0
 Resuming Time If hot start (Seconds)           :  3600.000
 Specify Min WaterDepth offshore  (meter)       :   0.000
 Initial Cond. (0:FLT,1:File,2:WM,3:LS,4:FLT+LS):  0
 Specify BC  (0-Open;1-Sponge;2-Wall;3-FACTS)   :  0
 Specify Input Z filename (for BC=3, FACTS)     :  no_data.xyz
 Specify Input U filename (for BC=3, FACTS)     :  no_data.xyz
 Specify Input V filename (for BC=3, FACTS)     :  no_data.xyz

#===============================================:===============================
# Parameters for Fault Model (Segment 01)       :Values                        |
#===============================================:===============================
 No. of FLT Planes (With fault_multi.ctl if >1) :  1
 Fault Rupture Time (seconds)                   :  00.000
 Faulting Option (0: Model; 1- Data;)           :  0
 Focal Depth                             (meter):  40000.000
 Length of source area                   (meter):  200000.000
 Width of source area                    (meter):  7000.000
 Dislocation of fault plate              (meter):  5.0000
 Strike direction (theta)               (degree):  340.000
 Dip  angle       (delta)               (degree):  20.000
 Slip angle       (lamda)               (degree):  90.000
 Origin of Comp. Domain (Layer 01) (Lat, degree):  -37.000000
 Origin of Comp. Domain (Layer 01) (Lon, degree):  -24.600000
 Epicenter: Latitude                    (degree):  -9.79000
 Epicenter: Longitude                   (degree):  280.522
 File Name of Deformation Data                  :  nodata.dat
 Data Format Option (0-COMCOT; 1-MOST; 2-XYZ)   :  2

#===============================================:===============================
#  Parameters for Wave Maker                    :Values                        |
#===============================================:===============================
 Wave type  ( 1:Solit, 2:given, 3:focusing )    :  1
 FileName of Customized Input (for Type=2)      : fse.dat
 Incident direction( 1:top,2:bt,3:lf,4:rt,5:ob ):  2
 Characteristic Wave Amplitude        (meter)   :  0.000
 Typical Water depth                  (meter)   :  0000.000

#===============================================:===============================
#  Parameters for Submarine LS/Transient Motion :ValUes                        |
#===============================================:===============================
 X Coord. of Left/West Edge of Landlide Area    :  000.00000
 X Coord. of Right/East Edge of Landlide Area   :  000.00000
 Y Coord. of Bottom/South Edge of Landlide Area :  000.00000
 Y Coord. of Top/North Edge of Landlide Area    :  000.00000
 File Name of landslide Data                    : landslide.dat
 Data Format Option (0-Old; 1-XYT; 2-Function)  :     1

#===============================================:===============================
# Configurations for all grids                  :Values                        |
#===============================================:===============================
# Parameters for 1st-level grid -- layer 01     :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  0
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  0
 Grid Size  (dx, sph:minute, cart:meter)        :  3.0
 Time step                            ( second ):  1.000
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  1
 Manning's Roughness Coef. (For fric.option=0)  :  00.000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  1
 X_start                                        :  266.68333
 X_end                                          :  292.000000
 Y_Start                                        :  -24.600000
 Y_end                                          :  4.500000
 File Name of Bathymetry Data                   :  malla_gebco_2ma_peru.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  01
 Grid Level                                     :  1
 Parent Grid's ID Number                        : -1

#===============================================:===============================
#  Parameters for Sub-level grid -- layer 02    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  1
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  0
 Manning's Roughness Coef. (For fric.option=0)  : 0.025000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  2
 GridSize Ratio of Parent layer to current layer:  5
 X_start                                        :  287.500
 X_end                                          :  289.000
 Y_Start                                        :  -34.0000
 Y_end                                          :  -32.000
 FileName of Water depth data                   :  bat_825_WGS84.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  02
 Grid Level                                     :  2
 Parent Grid's ID Number                        : 01

#===============================================:===============================
#  Parameters for Sub-level grid -- layer 03    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  1
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  0
 Manning's Roughness Coef. (For fric.option=0)  : 0.025000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  1
 GridSize Ratio of Parent layer to current layer:  6
 X_start                                        :  288.41658
 X_end                                          :  288.49200
 Y_Start                                        :  -33.049079
 Y_end                                          :  -32.979694
 FileName of Water depth data                   :  bat_15m_WGS84.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  03
 Grid Level                                     :  3
 Parent Grid's ID Number                        : 02

#===============================================:===============================
#  Parameters for Sub-level grid -- layer 04    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  1
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  0
 Manning's Roughness Coef. (For fric.option=0)  : 0.025000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  1
 GridSize Ratio of Parent layer to current layer:  7
 X_start                                        :  288.416617550343
 X_end                                          :  288.484337550343
 Y_Start                                        :  -33.0424058551700
 Y_end                                          :  -32.9838058551700
 FileName of Water depth data                   :  bat_vina_4m.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  04
 Grid Level                                     :  3
 Parent Grid's ID Number                        : 03

#===============================================:===============================
#  Parameters for Sub-level grid -- layer 05    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  1
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  0
 Manning's Roughness Coef. (For fric.option=0)  : 0.025000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  1
 GridSize Ratio of Parent layer to current layer:  7
 X_start                                        :  288.357530774647
 X_end                                          :  288.424810774647
 Y_Start                                        :  -33.0626598272520
 Y_end                                          :  -32.9991798272520
 FileName of Water depth data                   :  bat_valpo_4m.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  05
 Grid Level                                     :  3
 Parent Grid's ID Number                        : 03

#===============================================:===============================
#  Parameters for Sub-level grid -- layer 06    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  1
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  0
 Manning's Roughness Coef. (For fric.option=0)  : 0.025000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  1
 GridSize Ratio of Parent layer to current layer:  6
 X_start                                        :  286.980000
 X_end                                          :  287.018000
 Y_Start                                        :  -36.758000
 Y_end                                          :  -36.695000
 FileName of Water depth data                   :  Grilla_Penco_Mod_NMM+40cm.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  06
 Grid Level                                     :  3
 Parent Grid's ID Number                        : 05

#===============================================:===============================
#  Parameters for Sub-level grid -- layer 07    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  1
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  0
 Manning's Roughness Coef. (For fric.option=0)  : 0.000000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  1
 GridSize Ratio of Parent layer to current layer:  0
 X_start                                        :  0.000000
 X_end                                          :  0.000000
 Y_Start                                        :  0.000000
 Y_end                                          :  0.000000
 FileName of Water depth data                   :  no_data.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  07
 Grid Level                                     :  2
 Parent Grid's ID Number                        : 01

#===============================================:===============================
#  Parameters for Sub-level grid -- layer 08    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  1
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  0
 Manning's Roughness Coef. (For fric.option=0)  : 0.000000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  1
 GridSize Ratio of Parent layer to current layer:  0
 X_start                                        :  0.000000
 X_end                                          :  0.000000
 Y_Start                                        :  0.000000
 Y_end                                          :  0.000000
 FileName of Water depth data                   :  no_data.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  08
 Grid Level                                     :  2
 Parent Grid's ID Number                        : 01

#===============================================:===============================
#  Parameters for Sub-level grid -- layer 09    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  1
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  0
 Manning's Roughness Coef. (For fric.option=0)  : 0.000000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  1
 GridSize Ratio of Parent layer to current layer:  0
 X_start                                        :  0.000000
 X_end                                          :  0.000000
 Y_Start                                        :  0.000000
 Y_end                                          :  0.000000
 FileName of Water depth data                   :  no_data.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  09
 Grid Level                                     :  2
 Parent Grid's ID Number                        : 01

#===============================================:===============================
#  Parameters for Sub-level grid -- layer 10    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  1
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  0
 Manning's Roughness Coef. (For fric.option=0)  : 0.000000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  1
 GridSize Ratio of Parent layer to current layer:  0
 X_start                                        :  0.000000
 X_end                                          :  0.000000
 Y_Start                                        :  0.000000
 Y_end                                          :  0.000000
 FileName of Water depth data                   :  no_data.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  10
 Grid Level                                     :  2
 Parent Grid's ID Number                        : 01

#===============================================:===============================
#  Parameters for Sub-level grid -- layer 11    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  1
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  0
 Manning's Roughness Coef. (For fric.option=0)  : 0.000000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  1
 GridSize Ratio of Parent layer to current layer:  0
 X_start                                        :  0.000000
 X_end                                          :  0.000000
 Y_Start                                        :  0.000000
 Y_end                                          :  0.000000
 FileName of Water depth data                   :  no_data.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  11
 Grid Level                                     :  2
 Parent Grid's ID Number                        : 01

#===============================================:===============================
#  Parameters for Sub-level grid -- layer 12    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  1
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  0
 Manning's Roughness Coef. (For fric.option=0)  : 0.000000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  1
 GridSize Ratio of Parent layer to current layer:  0
 X_start                                        :  0.000000
 X_end                                          :  0.000000
 Y_Start                                        :  0.000000
 Y_end                                          :  0.000000
 FileName of Water depth data                   :  no_data.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  12
 Grid Level                                     :  2
 Parent Grid's ID Number                        : 01

#===============================================:===============================
#  Parameters for Sub-level grid -- layer 13    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):  1
 Coordinate System    (0:spherical, 1:cartesian):  0
 Governing Equations  (0:linear,    1:nonlinear):  0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :  0
 Manning's Roughness Coef. (For fric.option=0)  : 0.000000
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):  1
 GridSize Ratio of Parent layer to current layer:  0
 X_start                                        :  0.000000
 X_end                                          :  0.000000
 Y_Start                                        :  0.000000
 Y_end                                          :  0.000000
 FileName of Water depth data                   :  no_data.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):  2
 Grid Identification Number                     :  13
 Grid Level                                     :  2
 Parent Grid's ID Number                        : 01
