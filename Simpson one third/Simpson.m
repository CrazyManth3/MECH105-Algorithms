function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

i = length(x)
n=i-1

if linspace(x(1),x(i),i)==x
else
    error('x values must be equally spaced')
end

if length(x)~=length(y)
    error('x and y vectors must be the same length')
end

if mod(i,2)==0
    warning('The last interval will be calculated with the trapezoidal rule')
    I = ((x(i)-x(1))/(3*n)*(y(1)+4*sum(y(2:2:(i-3)))+2*sum(y(3:2:i-2)))+y(i-1))+((x(i)-x(i-1))/2)*(y(i)+y(i-1))
else
    I = ((x(i)-x(1))/(3*n)*(y(1)+4*sum(y(2:2:(i-2)))+2*sum(y(3:2:(i-1)))+y(i)))
end
if i==3
    I = ((x(i)-x(1))/(3*n))*(y(1)+4*y(2)+y(3))
end

end