clear;
clc;
%% moteghaier
syms r
r= rand                                 % random num        
                                        % for random square matrix use *rand(n)*, 
                                        % we can use *randn* too. 
                                        % this syntax ( randn ) used for random number which
                                        % is given to us average = 0 and Standard Deviation = 1
                                        % like noises that used for solving problems ... 

%% zarb matrix
int_1= [1,2;3,4];
int_2= [5,6;7,8];
Zarb_dakheli= int_1 * int_2             % zarb 
Deraie_be_deraie= int_1 .* int_2        % deraie be deraie

%% rasm 2D and 3D
%2D
n= 0:pi/100:2*pi;
sn_f= sin(n);
plot(n,sn_f)                            % 2-D line plot
% hold on
% we use hold on for drawing another plot to make multi plot
%3D
n= 0:pi/100:2*pi;
sn_f= sin(n);
cs_f= cos(n);
plot3(n,sn_f,cs_f)    % 3-D point or line plot

%% dirac function
clear; clc;
syms x
fplot(dirac(x))

%% heaviside function
clear; clc;
% syms x 
t= -2:2;
% x= heaviside(t);
% fplot(heaviside(x), [-2, 2])
plot(t,heaviside(t),'m','linewidth',3);

%% fourier series
clear; clc;
syms t x w
f = dirac(t);         % 1. fourier(f) returns the Fourier Transform of f. By default, the function symvar 
f_FT = fourier(f)     %    determines the independent variable, and w is the transformation variable.

f = exp(-t^2-x^2);    % 2. fourier(f,transVar) uses the transformation variable transVar instead of w.
fourier(f)

f = t*exp(-t^2);      % 3. fourier(f,var,transVar) uses the independent variable var and the 
fourier(f,t,w)        %    transformation variable transVar instead of symvar and w, respectively.

%% Laplace Transform
clear; clc;
syms x y a            % laplace(f) returns the Laplace Transform of f. By default, the independent 
f = 1/sqrt(x);        % variable is t and the transformation variable is s.
laplace(f)

laplace(f,y)          % laplace(f,transVar) uses the transformation variable transVar instead of s.

laplace(f,a,y)        % laplace(f,var,transVar) uses the independent variable var and the transformation 
                      % variable transVar instead of t and s, respectively.
                      
                      
%% Gibbs Phenomenon ( S01_PRJ )
clear; clc;
%---------------------------plot 1 : pink
figure;
pause(2);
t=0:0.01:2*pi;
x=2*square(t);
plot(t,x,'m','linewidth',3);
%---------------------------plot 2 : red
hold on;
pause(1);
a=4*2/pi;
y=0;
w=1;
n=8;
for i=1:2:(2*n+1);
   y=y+((a/i).*sin(i*w*t));
   i=i+1;
end
plot(t,y,'r')
%---------------------------plot 3 : green
hold on;
pause(1);
a=4*2/pi;
w=1;
n=4;
y=0;
for i=1:2:(2*n+1)
   y=y+((a/i).*sin(i*w*t));
   i=i+1;
end
plot(t,y,'g')
%----------------------------plot 4 : blue
hold on;
pause(1);
a=4*2/pi;
w=1;
n=9;
y=0;
for i=1:2:(2*n+1)
   y=y+((a/i).*sin(i*w*t));
   i=i+1;
end
plot(t,y,'b')
%----------------------------plot 5 : black
hold on;
pause(1);
a=4*2/pi;
w=1;
n=11;
y=0;
for i=1:2:(2*n+1)
   y=y+((a/i).*sin(i*w*t));
   i=i+1;
end
plot(t,y,'k')
%----------------------------plot 6 : aqua (abi kheili roshan)
hold on;
pause(1);
n=500;
y=0;
for i=1:2:(2*n+1);
   y=y+((a/i).*sin(i*w*t));
   i=i+1;
end
plot(t,y,'c');
%-----------------------------plot 7 : yellow
hold on;
pause(1);
n=5000;
y=0;
w=1;
for i=1:2:(2*n+1);
   y=y+((a/i).*sin(i*w*t));
   i=i+1;
end
plot(t,y,'y','linewidth',2); 
