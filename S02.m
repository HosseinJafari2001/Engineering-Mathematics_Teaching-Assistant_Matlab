%% Hyperboloid (rasm hozloli gon)
% (x^2)/(a^2) + (y^2)/(b^2) - ((z^2)/(c^2)) = 1
clear; clc;
syms f y x z a b c
[x,y,z] = meshgrid(-10:0.5:10,-10:0.5:10,-10:0.5:10);
a=1;
b=1;
c=1;
f = x.^2/a^2 + y.^2/b^2 - z.^2/c^2;
p= patch(isosurface(x,y,z,f,1)); % This is the key step. It involves getting the part of the volume corresponding to the surface defined by the equation
set(p,'FaceColor','blue','EdgeColor','none');
% fsurf(f,[
daspect([1 1 1])
view(3);
camlight
% colorbar

%% Paraboloid (rasm sahmi gon)
clear; clc;
%// Create three function handles with the components of you function
fx = @(u,v) u.* cos(v);  %// Notice that we use .*
fy = @(u,v) u.^2;        %// and .^ because we want to apply
fz = @(u,v) 5.*u.*sin(v);%// multiplication and power component-wise.

%// Create vectors u and v within some range with 100 points each
u = linspace(-10,10, 100);
v = linspace(-pi,pi, 100);

%// Create a meshgrid from these ranges
[uu,vv] = meshgrid(u, v);

%// Create the surface plot using surf
surf(fx(uu,vv),  fy(uu,vv),  fz(uu,vv));

%// Optional: Interpolate the color and do not show the grid lines
shading interp;

%// Optional: Set the aspect ratio of the axes to 1:1:1 so proportions
%//           are displayed correctly.
axis equal;

%% Ellipsoid with function (rasm beizi gon)
clear; clc;
ellipsoid(0,-0.5,0,6,3.25,3.25)
axis equal

%% Ellipsoid (rasm beizi gon)


