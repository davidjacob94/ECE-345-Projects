%David Jacob
%John Shaver
%ECE 345
%Project 3
%Part 2, b

clc 
clear all

size = 100000;
n = 1000;
o = [.5, 1, 3];
format compact

for i = 1:3

v = normrnd(0,o(i),size, n);

An = mean(v.^2, 2);
Gn = geomean(v.^2,2);
Md = median(v.^2);

x1 = (-(max(An))):0.001:(max(An)+1);
[normdist1,x1] = hist(An, x1);
normdist1=normdist1/.001/size;

x2 = (-(max(Gn))):0.001:(max(Gn)+1);
[normdist2,x2] = hist(Gn, x2);
normdist2=normdist2/.001/size;

x3 = (-(max(Md))):0.001:(max(Md)+1);
[normdist3,x3] = hist(Md, x3);
normdist3=normdist3/.001/size;

 figure(i)
    subplot(3,1,1)
    plot(x1,normdist1,'-b')
    title(sprintf('Aritmetic Mean Estimator (sigma = %f1.1)', o(i)) )
    xlabel('Estimator value')
    ylabel('f(An)')
    
    subplot(3,1,2)
    plot(x2,normdist2,'-r')
    title('Geometric Mean Estimator')
    xlabel('Estimator value')
    ylabel('f(Gn)')
    
    subplot(3,1,3)
    plot(x3,normdist3,'-g')
    title('Median Estimator')
    xlabel('Estimator value')
    ylabel('f(Mn)')
    
end
