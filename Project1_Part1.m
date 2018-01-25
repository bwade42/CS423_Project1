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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            Graph function's                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%% fixed point Graph %%%%%%%%

x(1) = x;
for n = 1: population - 1
     x(n +1) = R * x(n) * (1-x(n));  
     
     
end

plot(1:population,x,'-r','Marker','square','MarkerIndices',5)
ylabel('x(t)');
xlabel('t');
title('Figure 1: Time Steps = 50, R=2.0 , X0 = 0.2'); %% fixed point
legend('Fixed Point with X0 = 0.2')
x1 = 5;
y1 = 0.49;
txt1 = '\uparrow Fixed Point';
text(x1,y1,txt1)

%%%%%% periodic cyle Graph %%%%%
hold on
x(1) = 0.2

for n = 1: population - 1
     x(n +1) = R2 * x(n) * (1-x(n));     
end
plot(1:population,x,'-g','Marker','square','MarkerIndices',5)




