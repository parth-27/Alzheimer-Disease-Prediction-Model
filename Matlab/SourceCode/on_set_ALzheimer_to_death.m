%Transition Intensities for the AD Model
%For u24 onset alzheimer to death

x = 60: 95;
A = 0;
Bmale = 9.4116 * (10^-5);
Bfemale = 2.5934 * (10^-5);
Cmale  = 8.4554 * (10^-2);
Cfemale  = 9.3605 * (10^-2);
D = 0.21776 : 0.33502;

y1 = A + D * Bmale * exp(Cmale*x);
y2 = A + D * Bfemale * exp(Cfemale*x);

plot(x,y1,x,y2);
legend('u24 male','u24 female');
title('u24 onset alzheimer to death ');
xlabel('Age(Years)');
ylabel('Probability');

