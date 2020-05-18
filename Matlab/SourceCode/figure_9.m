
x = 60 : 90 ;
uad = 10^-7*1.31275 * exp(0.145961 * x );

% AD (m=0.25)
rm1=0.93
uad = 10^-7*1.31275 * exp(0.145961 * x );
y1 = rm1 * uad;


%AD (m=0.5)

rm2=0.96;
y2 = rm2*uad;


%AD (m=1)

rm3 =0.97;
y3 = rm3*uad;



plot(x,y1,x,y2,x,y3);
legend('AD (m=0.25)','AD (m=0.5)','AD (m=1)');
title('  Comparison of estimated population incidence of AD for different levels of relative risk, males and females combined');
xlabel('Age(Year)');
ylabel('incident AD');
