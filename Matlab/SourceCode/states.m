% Probablity for no alzheimer to onset alzheimer
%U12 no Alzheimer to on set alzheimer
A = 0.02025038;
x1 = 60: 95;
y1 = A + (10^-7*1.31275 * exp(0.145961 * x1));


%U23 on set alzheimer to to institutional alzheimer
x2 = 60 : 95; 
y2 = 0.18895779  * ones(1, length(x));


%on on set alzheimer to die
P =  0.33502488;
x3 = 60: 95;
y3 = P + (10^-5)*9.4116 * exp(0.084554 * x );


%u34 institutationalised alzheimer to death
k= 0.08 : 0.27;
x4 = 60: 95;
y4 = k + (10^-5)*9.4116 * exp(0.084554 * x );


plot(x1,y1,x2, y2,x3,y3,x4,y4)
legend('U12 ','u23','u24','u34');
title('Changes in states');
xlabel('Age(Years)');
ylabel('Probability');

