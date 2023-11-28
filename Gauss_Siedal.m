clc
clear all


A=[4.63 -1.21 3.22; -3.07 5.48 2.11; 1.26 3.11 4.57];
b=[2.22; -3.17; 5.11];


n=size(A,1);


tol=10^-4;
err=ones(1,n);


x0=zeros(1,n);
x1=zeros(1,n);


while norm(err, inf) > tol
    for i=1:n


        sum=0;
        for j=1:n


            if j~=i
                sum = sum + A(i,j)*x0(1,j);
            end
        end
        x1(i)=(b(i)-sum)/A(i,i);


        err(i)=x1(i)-x0(i);
       
        x0(i)=x1(i);
    end
end


disp(x0);
