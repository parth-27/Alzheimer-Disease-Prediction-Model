x1 = 65: 120;
y1 = (10^-5)*9.4116 * exp(0.084554 * x1  );

x2 = 65: 120;
y2 = (10^-5)*2.593 * exp(0.084554 * x2  );
plot(x1,y1,x2,y2);

legend('AM80','AF60');
title('Mortality table');
xlabel('Age (Years)');
