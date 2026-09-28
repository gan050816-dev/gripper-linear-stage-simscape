% Simscape(TM) Multibody(TM) version: 24.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(9).translation = [0.0 0.0 0.0];
smiData.RigidTransform(9).angle = 0.0;
smiData.RigidTransform(9).axis = [0.0 0.0 0.0];
smiData.RigidTransform(9).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [-20.171821305841899 -25 39.999999999999979];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [1 0 0];
smiData.RigidTransform(1).ID = "B[HuaTai-1:-:HuaGan-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-1.4210854715202004e-14 -1.5143442055887135e-13 393.98967301619894];  % mm
smiData.RigidTransform(2).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(2).axis = [1 0 0];
smiData.RigidTransform(2).ID = "F[HuaTai-1:-:HuaGan-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [69.828178694158098 0 10.000000000000009];  % mm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(3).ID = "B[ZhiJia-2:-:HuaTai-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [69.828178694158098 5.0000000000001421 246.01032698380106];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(4).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(4).ID = "F[ZhiJia-2:-:HuaTai-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [2.5180119652855724 33.186061198110238 705];  % mm
smiData.RigidTransform(5).angle = 0;  % rad
smiData.RigidTransform(5).axis = [0 0 0];
smiData.RigidTransform(5).ID = "RootGround[ZhiJia-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [2.518011965285575 33.186061198110245 115];  % mm
smiData.RigidTransform(6).angle = 0;  % rad
smiData.RigidTransform(6).axis = [0 0 0];
smiData.RigidTransform(6).ID = "RootGround[ZhiJia-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [-17.653809340556325 3.1860611981102474 114.99999999999997];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = "RootGround[HuaGan-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [42.346190659443671 3.1860611981102474 115.00000000000003];  % mm
smiData.RigidTransform(8).angle = 0.016666859573929719;  % rad
smiData.RigidTransform(8).axis = [0 0 1];
smiData.RigidTransform(8).ID = "RootGround[HuaGan-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [12.346190659443671 13.186061198110242 115.00000000000003];  % mm
smiData.RigidTransform(9).angle = 3.0582209880436233;  % rad
smiData.RigidTransform(9).axis = [-0 -0 -1];
smiData.RigidTransform(9).ID = "RootGround[SiGan-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(4).mass = 0.0;
smiData.Solid(4).CoM = [0.0 0.0 0.0];
smiData.Solid(4).MoI = [0.0 0.0 0.0];
smiData.Solid(4).PoI = [0.0 0.0 0.0];
smiData.Solid(4).color = [0.0 0.0 0.0];
smiData.Solid(4).opacity = 0.0;
smiData.Solid(4).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.057643805509807647;  % kg
smiData.Solid(1).CoM = [9.8281786941581046 -24.931874886082621 5.0000000000000009];  % mm
smiData.Solid(1).MoI = [12.906466441399791 71.051922136235916 82.997658485805587];  % kg*mm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(1).color = [1 1 1];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "ZhiJia*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.067858401317539535;  % kg
smiData.Solid(2).CoM = [0 0 300];  % mm
smiData.Solid(2).MoI = [2036.3627651380427 2036.3627651380427 1.2214512237157116];  % kg*mm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(2).color = [1 1 1];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "HuaGan*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.1825752220392306;  % kg
smiData.Solid(3).CoM = [9.8281786941581046 -19.913964430153758 20];  % mm
smiData.Solid(3).MoI = [49.647487183719171 249.02959129984762 249.99035260643868];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(3).color = [1 1 1];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "HuaTai*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.048694686130641804;  % kg
smiData.Solid(4).CoM = [0 0 310];  % mm
smiData.Solid(4).MoI = [1560.1574541732089 1560.1574541732089 0.60868357663302253];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(4).color = [1 1 1];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "SiGan*:*默认";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the CylindricalJoint structure array by filling in null values.
smiData.CylindricalJoint(1).Rz.Pos = 0.0;
smiData.CylindricalJoint(1).Pz.Pos = 0.0;
smiData.CylindricalJoint(1).ID = "";

smiData.CylindricalJoint(1).Rz.Pos = 0;  % deg
smiData.CylindricalJoint(1).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(1).ID = "[HuaTai-1:-:HuaGan-1]";

