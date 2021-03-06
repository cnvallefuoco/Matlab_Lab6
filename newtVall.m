function[z,it]=newtVall(z) 
% Subfunction that applies the Newton Function;
% Input:z; Output:approximate root z, number of iterations
it=0; % initializes the number of iterations to zero
while norm(fun(z))>1e-6 % Applies the norm of Newtowns Method until f is below tol
    z=z-(fun(z)./derivFun(z)); % Newtons Method
    it=it+1; % the number of iterations
end
end

function f=fun(z)
% Original funtion
f=z.^3-3.^z; % function given
end

function fp=derivFun(z)
% Derivative of original function
fp=3*(z.^2)-((3.^z)*(log(3))); % derivative of given function
end
