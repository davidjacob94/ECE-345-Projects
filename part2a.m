% David Jacob
% John Shaver
% ECE 345: Project 3
% Part 2a

clc
close all


size = 100000;

%Creates array of all values of n
n = [1, 3, 9, 27, 1000];

for i = 1:5

    %creates normal distribution of voltages of sample size n 
    v = normrnd(0,1,size, n(i));
    
    %Calculates aritmetic mean of v^2
    An = mean(v.^2, 2);
    
    
    %cleaning up graphs
    x = (-(max(An))):0.001:(max(An)+1);
    [normdist,interval] = hist(An, x);
    normdist=normdist/.001/size;
    
    
    figure(1)
    subplot(2,3,i)
    plot(x,normdist,'-b')
    title('Aritmetic Mean Estimator of Sigma')
    xlabel(sprintf('Estimator value for n = %i',n(i)))
    ylabel('f(An)')
end

