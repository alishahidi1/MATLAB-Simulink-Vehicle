clc; clear all; close all;

l=2.6;
kus=0.0015;

u=0:0.01:100;
g=u./(l+kus*u.^2);
plot(u,g)
xlabel('Vehicle Speed(m/s)')
ylabel('Yaw Velocity Gain')
ylim([0 1/sqrt(l*kus)])