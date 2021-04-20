clear
clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Question 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

y = .5;

for i = 1:500    
    x = exprnd(1/3,1,i);
    n = length(x);
    
    z(i) = exp(-((y-x(i)).^2)/2);
    Z(i) = (1/n)*sum(z);
    
    X(i) = x(i).*exp(-((y-x(i)).^2)/2);
    
    R(i) = (1/n)*sum(X);
    
    theta1(i) = R/Z;
end

figure(1)
plot(theta1)
xlabel('Sample Size')
ylabel('Estimator')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Question 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

n = 500;


for a = 1:5
    x = randn(1,n)+a;
    theta2(a) = (1/n)*sum((x>a).*exp(a^2/2-a*x));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Question 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

for i = 1:500
    x = randn(1,i);
    n = length(x);
    
    z(i) = exp(-abs(x(i)).^(3/4))/((1/sqrt(2*pi))*exp(-(x(i)^2)/2));
    Z(i) = (1/n)*sum(z);
    
    y(i) = x(i)*exp(-abs(x(i)).^(3/4))/((1/sqrt(2*pi))*exp(-(x(i)^2)/2)); 
    Y(i) = (1/n)*sum(y);
    
    theta3(i) = Y(i)./Z(i);
    
    sig2(i) = (1/n)*sum((x(i)-theta3(i)).^2);    
    
end

figure(3)
plot(theta3)
xlabel('Sample Size')
ylabel('Estimator')

figure(4)
plot(sig2)
xlabel('Sample Size')
ylabel('Estimator')

