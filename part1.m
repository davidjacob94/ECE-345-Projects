%David Jacob
%John Shaver
%ECE 345 Project 3
%Part 1

close all
clear all
clc

n = 100000;
interval = [0:0.001:1]

%Creates n samples of 2, 4, 16, 100 columns long uniformly distributed
rM2 = rand(n, 2);
rM4 = rand(n, 4);
rM16 = rand(n, 16);
rM100 = rand(n, 100);


%Calculates mean along Columns
mM2 = mean(rM2, 2)
mM4 = mean(rM4, 2)
mM16 = mean(rM16, 2);
mM100 = mean(rM100,2);


%Creates histograms of pdf of each Mn
[histm2, z] = hist(mM2, interval);
histm2 = histm2/n/.001;

[histm4, z] = hist(mM4, interval);
histm4 = histm4/n/.001;

[histm16, z] = hist(mM16, interval);
histm16 = histm16/n/.001;

[histm100, z] = hist(mM100, interval);
histm100 = histm100/n/.001;
