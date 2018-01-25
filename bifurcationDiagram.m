%Inspired by code found at https://amath.colorado.edu/sites/default/files/2015/03/274176680/APPM2460Worksheet11.pdf

function bifurcationDiagram()

timeSteps = 1:1000;
rVals = 2.4:0.01:4; %R values
x = 0.5*ones(1,length(rVals)); %An x val for every R val
counter = 1;

%For each rVal, need to get end behavior of every x
for i= rVals
   %Get end behavior of each x - need to cut off beginning vals
   for j= timeSteps
        x(j+1, counter)=i*x(j, counter)*(1-x(j, counter));
   end
    counter = counter + 1;
   
end

truncate = 900;
x = x ( truncate :end ,:) ;
figure
plot ( rVals ,x)

end

