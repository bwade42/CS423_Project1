%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code inspired from : http://www.mas.ncl.ac.uk/~ncfb/mat3.pdf %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Global variables        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
population = 200;

x = 0.5;

R = 2.75;
R2 = 3.85;
R = 3.95;
R = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            Graph function's                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%% fixed point Graph %%%%%%%%

x(1) = x;
xReturn(1) = 0;

for n = 1: population - 1
     x(n +1) = R * x(n) * (1-x(n));
end

for n = 1: length(x)-1
   xReturn(n) =  x(n+1);
   xAnti(n) = ((x(n)*x(n))/2) - ((x(n)*x(n)*x(n)/3));
end

xReturn(length(x)) = R * x(end) * (1-x(end));
xAnti(length(x)) = ((x(end)*x(end))/2) - ((x(end)*x(end)*x(end)/3));

%truncate = 100;

%x = x(truncate:end);
%xReturn = xReturn(truncate:end);

test = x
testReturn = xReturn

%plot(xAnti)
plot(x,xReturn,'-r')
ylabel('x(t+1)');
xlabel('x(t)');
title1 = ['Figure 1: Shows population vs time for 50 time steps with' ...
    'R values of 2.0, 3.49 and 3.9'];
title(title1); 

%%%%%% periodic cyle Graph %%%%%
