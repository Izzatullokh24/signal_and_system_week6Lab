%Write a script that will visualize both the growing anddecaying exponentials. Note that the time scale mustbe continuous and observe the changes.
% Prompt the continuous the growing exponential signal
X = 0:0.001:1;
Y = exp(X/2);
plot(X,Y,'o')
% Prompt the continuous decaying exponentials signal
hold on
a = 6;
Z = exp(-a*X);
plot(X,Z ,'*');
legend('decaying exponentials signal', 'growing exponentials signal')
xlabel('X')
ylabel('exp(X/2) and exp(-a*X)')
title('The growing and decaying exponentials plot.')