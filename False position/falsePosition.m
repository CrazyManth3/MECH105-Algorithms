function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
if nargin > 5
    error('Too Many Inputs', ...
        'requires 3 inputs and 2 optional inputs');
end

es = .0001;
maxit=200;

ea=.0001;
iter=0;
while abs(ea*100)>es
  x2 = xu - (func(xu)*(xu-xl)/(func(xu)-func(xl)));
  
  iter=iter+1;
  if iter == maxit
      error('Too many iterations')
  end
  if func(xl)*func(x2)<0
      xu=x2;
      ea = (x2-xu)/(1+abs(x2));
  else
      xl=x2;
      ea = (x2-xl)/(1+abs(x2));
  end
end
root = x2;
fx = 0;
[root,fx,ea,iter]
end