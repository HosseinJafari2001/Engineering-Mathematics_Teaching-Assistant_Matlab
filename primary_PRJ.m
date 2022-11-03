%% HINT 0 : run codes section by section !!!

%% part 1 : sum

% we want to add two numbers together 
clear all; clc;
disp(' wellcome to the primary PRJ ')  % we use disp to show some sentence to user
disp(' ')

% tic
disp('adad ra vared konid')
x=input('enter a number 1: ');         % we use input to get number
y=input('enter a number 2: ');
tic
z=x+y;
toc
disp(['jame do adad shyd bavareton nashe vali mishe ' num2str(z) ' :)'])
% toc
% we use tic-toc to determine what time does it takes to process

%% HINT 1 !!!
% we can make codes on comment when they use this two button ( cntrl + R )
% and we can uncomment codes when they use ( cntrl + T )

%% part 2 : Formulation

clear; clc;
syms s;                                 % with syms we can make variable then we use it in formulation
ans= (s^2+4)/(s^3+2*s+1)
ans2= (s^2+4)...
    /(s^3+2*s+1)
ans3= @(x)(x^2+4)/(x^3+2*x+1)
a= [1,0,4]
b= [1,0,2,1]
ans4= tf(a,b)

%% part 3 : if

% we want check the nummbers
clear all; clc;
disp(' wellcome to the primary PRJ ')  % we use disp to show some sentence to user
disp(' ')

x=input('enter a number: ');
if x==3
    disp('it is 3')
elseif x==4
    disp('it is 4')
else
    disp('it is not 3 or 4') 
end

%% part 4 : Flowerpot

clear;clc;
level=input('level: ');
source=input('source: ');

% if -1 need water
% if 0.1 no need to water
if level<0 & source>0
    %turn on the pump
    disp('turn on the pump for 10s')
else
    disp('do nothing')
end

%% part 5 : switch

clear all; clc;
disp(' wellcome to the primary PRJ ')  % we use disp to show some sentence to user
disp(' ')

x=input('df = ');
switch(x)
    case 1
        disp('one')
    case 5
        disp('five')
    case 3
        disp('three')
end

%% part 6 : while, continue and break

clear all; clc;
disp(' wellcome to the primary PRJ ')  % we use disp to show some sentence to user
disp(' ')

x=input('enter a number: ');
% y=x;
% while(x>0)
%     disp(x)
%     x=x-1;
% end
% disp('raftim to for!')
% for i=y:-1:1
%     disp(i)
% end
% for i=1:x
%     if i==2
%         disp('raftim badi')
%         continue;
%     end
%     disp(i)
% end
for i=1:x
    if i==4
        disp('raftim badi')
        break;                         % with this code when they find their needed data they can break the loop
    end
    disp(i)
end

%% part 7 : Multiplication table 

clear;clc;
x=input('enter a number: ');
Mtable=zeros(x);
for i=1:x
    for j=1:x
        Mtable(i,j)=i*j;
    end
end
disp(Mtable)

%% part 8 : Khayyam pascal rectangle 

clear;clc;
% this is a khayyam pascal series
n=input('enter a number :\n');
for i=0:n-1
    comb=1;
    fprintf('%d ',comb);
    for j=1:i
%      combination mokhafafe tarkib   
       comb=factorial(i)/(factorial(i-j)*factorial(j));
       fprintf('%d ',comb);
    end
    fprintf('\n');
end

%% part 9 : fact

% in this section we calculate factorial
clear all; clc;
disp(' wellcome to the primary PRJ ')  % we use disp to show some sentence to user
disp(' ')

x=input('enter a number: ');
f=1;
if(x>=0)
    for i=1:1:x
        f=f*i;
    end
    disp(f)
else
    disp('khodeti');
end

%% part 10 : divisors

clear all; clc;
disp(' wellcome to the primary PRJ ')  % we use disp to show some sentence to user
disp(' ')

x='uint8';
x=input('enter your number: ');
count='uint4';
count=0;
for i=1:x
    if mod(x,i)==0                      % mod in this code means that their remaining should be zero
        count=count+1;
    end
end
% count=(count-1)*2;
% if mod(x,x/2)==0
%    count=count+1;
% end
disp(count)

%% part 11 : Fibonacci series 

clear;clc;
% this is fibonaci series
n=input('whats stage you want to show to you? \n');
x=zeros(1,n,'uint64');
x(1,1)=1;
x(1,2)=1;
for i=3:n;
    x(1,i)=x(1,i-1)+x(1,i-2);
end
disp(x(1,n))

%% part 12 : Text Processing


%% part 13 : Image Processing
clear; clc;
open E:\University _ SBU\UNI\TERM 7\_ Rizmo - TA _\PRJ\0-13- Image Processing\IP_02.m

%% part 14 : َAudio Processing
clear; clc;
open E:\University _ SBU\UNI\TERM 7\_ Rizmo - TA _\PRJ\0-14- Audio Processing\Echo_final.m
open E:\University _ SBU\UNI\TERM 7\_ Rizmo - TA _\PRJ\0-14- Audio Processing\Removing_Echo_final.m

