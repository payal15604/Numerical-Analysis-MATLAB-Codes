clc;
clear all;

f = @(x,y) x*x*x * (exp(-2*x)) - 2*y

a=0;
y(1) = 1;
b = 0.3;
n = 3;
h = (b-a)/n;

for i=1:n+1
    x(i)=a+(i-1)*h;
end

for i=1:n
    y(i+1) = y(i)+h*f(x(i),y(i));
end
y