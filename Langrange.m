clc
clear all


// some x and y are given and we have to produce a function
x=[0 0.25 0.5 0.75];
y=[1 1.64872 2.71828 4.48169];


n=length(x); // number of given points
l=ones(1, n); // l is a row vector of size n having all elements as 1


p=0.43; // jispar value nikalni hai




for i=1:n
    for j=1:n
        if j~=i
            l(i)=((p-x(j))/(x(i)-x(j)))*l(i);
        end
    end
end


// agar 3 points hai to 3 l values aayengi ---> har ek l ko uski corresponding y value se multiply karna hai
sum=0;
for i=1:n
    sum=sum+l(i)*y(i);
end


disp(sum) // 1 single vector