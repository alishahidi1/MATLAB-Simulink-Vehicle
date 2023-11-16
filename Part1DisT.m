clc; clear all; close all;
r=0:0.01:3;
DisT=sqrt(1+(0.43*r).^2)./sqrt((1-r.^2).^2+(0.43*r).^2);
AccT=r.^2.*sqrt(1+(0.43*r).^2)./sqrt((1-r.^2).^2+(0.43*r).^2);

plot(r,DisT)
xlabel('W/Wn')
ylabel('Displacement Transmissibility (X/Y)')
figure
plot(r,AccT)
xlabel('W/Wn')
ylabel('Acceleration Transmissibility')
