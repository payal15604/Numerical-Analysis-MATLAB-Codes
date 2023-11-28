clc
clear all


A=[2 1 3; -1 4 -2; 0 2 1];
b=[5; 2; 7];


n=size(A, 1);


Y=[A b]; // augmentation


for j=1:n-1


    for i=j+1:n


        Y(i,:) = Y(i,:) - (( Y(i,j) / Y(j,j) ) * Y(j,:));


        if Y(j, j) == 0
            disp('cannot divide');
            break


        end
    end
end


disp(Y);


x = zeros(n, 1); // single column vector


x(n, 1) = Y(n, n+1)/Y(n, n);


for i = n-1:-1:1


    sum=0;
    for j=i+1:n


        sum=sum+ Y(i,j)*x(j);
    end


    x(i)=(Y(i,n+1)-sum)/Y(i,i);
end


disp(x);