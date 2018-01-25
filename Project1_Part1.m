%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code inspired from : http://www.mas.ncl.ac.uk/~ncfb/mat3.pdf %
% What i did that is new:                                      %
% *PreAllocated the for loop speed went from                   %
%  0.000683 seconds. to 0.000121 seconds.                      %
%                                                              %
% * make a function that allows you to define:                 %
%   R = death and birth rate                                   %
%   population = the size of the popluation                    %
%   x = the rate the popluation grows                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function logMap = Project1_Part1(population,R,x)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Logistic map equation            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x(1) = x;
for n = 1: population - 1
     x(n +1) = R * x(n) * (1-x(n));  
     logMap = x;
end
plot(1:population,x);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            Graph function's                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ylabel('x(t)');
xlabel('t');
title('R=2.5'); %% fixed point
end
