%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code inspired from : http://www.mas.ncl.ac.uk/~ncfb/mat3.pdf %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Global variables        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
timeSteps = 100;

%Set up set R values for 100 populations
for n=1:100
    randR(n) = (rand*0.5)+2.5;
    randR2(n) = (rand*0.1)+3.8;
    randR3(n) = (rand*0.1)+3.9;
end

%For each r value of all 100 populations
for i=1:100
    %Do 100-1 iterations
    x(i,1) = 0.5; %Initial population
    for n=1:99
        x(i,n+1) = randR(i) * x(i,n) * (1-x(i,n));
    end
end

x=mean(x) %Returns a row vector of the average of each column

plot(x,'-r')
hold on

%For each r value of all 100 populations
for i=1:100
    %Do 100-1 iterations
    x2(i,1) = 0.5; %Initial population
    for n=1:99
        x2(i,n+1) = randR2(i) * x2(i,n) * (1-x2(i,n));
    end
end

x2=mean(x2); %Returns a row vector of the average of each column

plot(x2,'-g')
hold on

%For each r value of all 100 populations
for i=1:100
    %Do 100-1 iterations
    x3(i,1) = 0.5; %Initial population
    for n=1:99
        x3(i,n+1) = randR3(i) * x3(i,n) * (1-x3(i,n));
    end
end

x3=mean(x3) %Returns a row vector of the average of each column

plot(x3,'-b')

ylabel('x');
xlabel('t');
title1 = ['Figure 1: Shows population vs time for 50 time steps with' ...
    'R values of 2.0, 3.49 and 3.9'];
title(title1); 

%%%%%% periodic cyle Graph %%%%%
