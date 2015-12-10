%David Jacob
%John Shaver
%ECE 345 Project 3
%Part 1

close all
clear all
clc

n = 100000;
interval = [0:0.001:1];

%Creates n samples of 2, 4, 16, 100 columns long uniformly distributed
rM2 = rand(n, 2);
rM4 = rand(n, 4);
rM16 = rand(n, 16);
rM100 = rand(n, 100);


%Calculates mean along Columns
mM2 = mean(rM2, 2);
mM4 = mean(rM4, 2);
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

%General Sigma and for specific N values
sigma = sqrt(1/12);
sig2 = sigma/sqrt(2);
sig4 = sigma/sqrt(4);
sig16 = sigma/sqrt(16);
sig100 = sigma/sqrt(100);

%Generates approximate pdfs for Mn
approx2 = normpdf(z, .5, sig2);
approx4 = normpdf(z, .5, sig4);
approx16 = normpdf(z, .5, sig16);
approx100 = normpdf(z, .5, sig100);


%Plotting
figure(1)
subplot(2,2,1)
plot(z, histm2,'-b', z, approx2, 'r')
legend('CLT', 'Precise')
title('Precise vs Approximate (CLT) for n = 2')
xlabel('Mean of X')
ylabel('f(x)')

subplot(2,2,2)
plot(z, histm4,'-b', interval, approx4, 'r')
title('Precise vs Approximate (CLT) for n = 4')
xlabel('Mean of X')
ylabel('f(x)')

subplot(2,2,3)
plot(z, histm16,'-b', z, approx16, 'r')
title('Precise vs Approximate (CLT) for n = 16')
xlabel('Mean of X')
ylabel('f(x)')

subplot(2,2,4)
plot(z, histm100,'-b', z, approx100, 'r')
title('Precise vs Approximate (CLT) for n = 100')
xlabel('Mean of X')
ylabel('f(x)')