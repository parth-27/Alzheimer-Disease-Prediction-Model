%TransitionIntensities for the AD Model
%For u34 instititional alzheimer to  death

x = 60: 95;
A = 0.27;
Bmale = 9.4116 * (10^-5);
Bfemale = 2.5934 * (10^-5);
Cmale  = 8.4554 * (10^-2);
Cfemale  = 9.3605 * (10^-2);
D=0.65 : 1;

y1 = A + D * Bmale * exp(Cmale*x);
y2 = A + D * Bfemale * exp(Cfemale*x);

plot(x,y1,x,y2);
legend('u34 male','u34 female')
title(' u34 instititional alzheimer to  death upper bound');
xlabel('Age(Year)');
ylabel('Probability');

