clc; clear all; close all;
c=800;
ms=244.23; mu=25; mf=269.231;
ks=14067; kt=150000; kf=12861;
A=[-c/ms c/ms;c/mu -c/mu];
B=[-ks/ms ks/ms;ks/mu -ks/mu-kt/mu];
C=[0;kt/mu];