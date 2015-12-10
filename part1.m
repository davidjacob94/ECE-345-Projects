close all
clear all
clc

t = linspace(-4,4,16384);

x = t*0;
ind = t>= 0 & t <=.25;
x(ind) = t(ind)*16;
ind = t>=.25 & t<=.5;
x(ind) = 8-16*t(ind);

y = median(diff(t))*conv(x,x,'same');
t2 = linspace(-4,4,length(y));


figure(1)
plot(t, y, '-r')
title('M4')
xlim([0,1])
ylabel('pdf(M4)')
xlabel('t')