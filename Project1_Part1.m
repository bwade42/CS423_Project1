%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code inspired from : http://www.mas.ncl.ac.uk/~ncfb/mat3.pdf %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Global variables        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
population = 50;

x = 0.2;

R = 2.0; %% fixed point value
R2 = 3.49; %% periodic cycle
R3 = 3.9;  %chaotic


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            Graph function's                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%% fixed point Graph %%%%%%%%

x(1) = x;
for n = 1: population - 1
     x(n +1) = R * x(n) * (1-x(n));  
     
     
end

plot(1:population,x,'-r','Marker','square','MarkerIndices',1:50)
ylabel('x(t)');
xlabel('t');
title1 = ['Figure 1: Shows population vs time for 50 time steps with' ...
    'R values of 2.0, 3.49 and 3.9'];
title(title1); 

%%%%%% periodic cyle Graph %%%%%
hold on
x(1) = 0.2;

for n = 1: population - 1
     x(n +1) = R2 * x(n) * (1-x(n));     
end
plot(1:population,x,'-g','Marker','square','MarkerIndices',1:50)


%%%%%% chaotic Graph %%%%%
hold on
x(1) = 0.2;

for n = 1: population - 1
     x(n +1) = R3 * x(n) * (1-x(n));     
end
plot(1:population,x,'-b','Marker','square','MarkerIndices',1:50);

legend('Fixed Point with X0 = 0.2','Periodic with X0 = 0.2'...
    ,'Chaotic with X0 = 0.2','Location','southeast');


