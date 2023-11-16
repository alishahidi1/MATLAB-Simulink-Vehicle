% clc; clear all; close all;
caf=25000; car=25000;
M=1000;
u=20; delta=2.5/180*pi;
a=1.2; b=1.4;
ms=900;
hp=0.6-0.2;
Ix=750; Iz=2000;
ksbrf=0.1; ksbrr=0.1; kcbrf=1; kcbrr=0.1; 
cgf=5000; cgr=5000; 
Kt=26384; Ct=1521; g=9.81;
a11=-2*(caf+car)/(M*u);
a21=-2*(a*caf-b*car)/(M*u);
a31=0;
a41=2*ms*hp*(caf+car)/(M*Ix*u);
a12=-(2*(a*caf-b*car)/(M*u)+u);
a22=-2*(a^2*caf+b^2*car)/(Iz*u);
a32=0;
a42=ms*hp/(M*Ix)*(2*(a*caf-b*car)/u+M*u)-ms*hp*u/Ix;
a13=2/M*(caf*ksbrf+car*ksbrr+cgf*kcbrf+cgr*kcbrr);
a23=2/Iz*(a*caf*ksbrf-b*car*ksbrr+a*cgf*kcbrf-b*cgr*kcbrr);
a33=0;
a43=-2*ms*hp/(M*Ix*u)*(caf*ksbrf+car*ksbrr+cgf*kcbrf+cgr*kcbrr)+(ms*g*hp-Kt)/Ix;
a14=0; a24=0; a34=1; a44=-Ct/Ix;
b1=2*caf/M; b2=2*a*caf/Iz; b3=0; b4=-ms*hp*caf/(M*Ix);


A=[a11 a12 a13 a14
   a21 a22 a23 a24
   a31 a32 a33 a34
   a41 a42 a43 a44];
B=[b1;b2;b3;b4];