clc;
close all;
clear;
n=5;
fact=1;
if n==0
    fact=1;
end
for q=1:n
    fact=fact*q;
end 

disp(fact)
