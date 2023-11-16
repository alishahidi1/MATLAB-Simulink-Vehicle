clc; clear all; close all;
caf=2*25000; car=2*25000;
M=1000;

a=1.2; b=1.4;
ms=900;
hp=0.6-0.2;
Ix=750; Iz=2000;
ksbrf=0.1; ksbrr=0.1; kcbrf=1; kcbrr=0.1; 
cgf=5000; cgr=5000; 
Kt=26384; Ct=1521; g=9.81;

u=20; delta=2.5/180*pi;

A=[-(caf+car)/(u*M) -((a*caf-b*car)/(u*M)+u)
 -(a*caf-b*car)/(u*Iz) -(a^2*caf+b^2*car)/(u*Iz)];

B=[caf/M;a*caf/Iz];

tr=10/180*pi;

kus=-M*(a*caf-b*car)/((a+b)*caf*car);

ss=A\(-B);
vss=ss(1);
rss=ss(2);

Delta=[]; r=[]; Ax=[]; Ay=[]; %u=[];
t=[];
for u=1:30
y=sim('BicycleModelTireSaturation');

t=cat(1,t,y.Ay.Time);
Delta=cat(1,Delta,y.Delta.Data);
r=cat(1,r,y.r.Data);
Ax=cat(1,Ax,y.Ax.Data);
Ay=cat(1,Ay,y.Ay.Data);
end


% 
% plot(d,Ay)