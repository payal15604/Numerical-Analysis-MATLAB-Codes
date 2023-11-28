f=@(x) (x)
a=input('lower limit ');
b=input('upper limit ');
n=input('enter no. of interval');
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+i*h;
    if(rem(i,2)==0)
        sum=sum+2*f(x);
    else
        sum=sum+4*f(x);
    end
end
integ=(h/3)*[f(a)+sum+f(b)];
fprintf('the value is %f',integ);