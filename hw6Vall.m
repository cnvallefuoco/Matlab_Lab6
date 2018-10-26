%% HW6
% This is Carina Vallefuoco's Homework 6.
%% Problem 1
% In this problem we are creating a fractal using complex and the function
% newtVall.
clear % clears all variables
close all % closes all figures

a=linspace(-5,8,200); % Real part: 200 equally spaced points between -5 and 8
b=linspace(-8,8,200); % Complex part: 200 equally spaced points between -8 and 8
itMatrix=zeros(200,200); % initializes a 200 by 200 matrix of all zeros to hold the number of iterations

for row = 1:200 % goes through each row
    for col = 1:200 % goes through each column  
        z=complex(a(row),b(col)); % imaginary number i
        [z,it]=newtVall(z); % calls the newtVall function and holds the output variables to z and it
        itMatrix(row,col)=it; % re-writes the itMatrix with the number of iterations
    end
end
imagesc(itMatrix) % displays the itMatrix
colorbar % displays a key to identifiy the color change
colormap summer % changes the color setting to summer colors
axis off % takes the axis off
%% Problem 2
% In this problem we are creating a fractal vector-wise and the function
% myNewtVall. The solution looks like a bunch of squares because instead of 
% using complex we are using vectors for z. There are two dimensions where
% the absolute/norm takes the negative numbers and makes them positive
% which allows there to be this symmetrical square fractal along the diagonal.
% The vector (a,b) is going to be the same as the vector(b,a) where the 
% number of iterations are the same where they both converge.
clear % clears all variables
close all % closes all figures
x=linspace(-10,10,200); % Real part: 200 equally spaced points between -10 and 10
y=linspace(-10,10,200); % Complex part: 200 equally spaced points between -10 and 10
newItMatrix=zeros(200,200); % initializes a 200 by 200 matrix of all zeros to hold the number of iterations
for row = 1:200 % goes through each row
    for col = 1:200 % goes through each column  
        z=[x(row);y(col)]; % vector form
        [z,it]=newtVall(z); % calls the newtVall function and holds the output variables to z and it
        newItMatrix(row,col)=it; % re-writes the itMatrix with the number of iterations
    end
end
imagesc(newItMatrix) % displays the itMatrix
colorbar % displays a key to identifiy the color change
colormap spring % changes the color setting to spring colors
axis off % takes the axis off

%% Problem 3
% In this problem we are creating a fractal using complex and the function
% myNewtVall.
clear % clears all variables
close all % closes all figures
a=linspace(-8,10,275); % Real part: 275 equally spaced points between -8 and 10
b=linspace(-8,10,275); % Complex part: 275 equally spaced points between -8 and 10
itMatrix=zeros(200,200); % initializes a 200 by 200 matrix of all zeros to hold the number of iterations
for row = 1:200 % goes through each row
    for col = 1:200 % goes through each column  
        z=complex(a(row),b(col)); % imaginary number i
        [z,it]=myNewtVall(z); % calls the newtVall function and holds the output variables to z and it
        newItMatrix(row,col)=it; % re-writes the itMatrix with the number of iterations
    end
end
imagesc(newItMatrix) % displays the itMatrix
colorbar % displays a key to identifiy the color change
colormap cool % changes the color setting to cool colors
axis off % takes the axis off
%% Link to this website and m-file
%
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/hw6Vall.html hw6Vall.html>
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/hw6Vall.m hw6Vall.m>
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/newtVall.m newtVall.m>
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/myNewtVall.m myNewtVall.m>
%
