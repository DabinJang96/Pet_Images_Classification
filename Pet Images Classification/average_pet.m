%This function takes in a data matrix X and a label
%vector y and outputs the average cat image and average dog image.
function [avgcat avgdog] = average_pet(X,y)

avgcat = zeros();
avgdog = zeros();

for i = 1:length(y)
    if(y(i) == -1)
        avgcat = avgcat + X(i,:);
    end
    if(y(i) == 1)
        avgdog = avgdog + X(i,:);
    end
end

avgcat = avgcat / 1000;
avgdog = avgdog / 1000;

%Your code should go above this line.
if (size(avgcat,1)~=1) 
    error("The variable avgcat is not a row vector.")
end
if (size(avgcat,2)~=size(X,2))
    error("The variable avgcat does not have the same number of columns as the data matrix input.")
end
if (size(avgdog,1)~=1) 
    error("The variable avgdog is not a row vector.")
end
if (size(avgdog,2)~=size(X,2)) 
    error("The variable avgdog does not have the same number of columns as the data matrix input.")
end