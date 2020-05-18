
x = 40 : 90 ;

% e4/e4 female
E1=10.4;
F1=0.00504;
G1=0;
H1=1;
k11=60;
k12=0;
rm1=0.94;
m=0.5;

P1 = exp(-F1 .* ((x-k11).^2) - G1.*(x-k12));
fi1= E1 .* P1 + H1;



%e4/e4 male
E2=8.94;
F2=0.00656;
G2=0;
H2=1;
k21=60;
k22=0;
rm2=0.6;
m2=0.5;

P2 = exp(-F2 .* ((x-k21).^2) - G2.*(x-k22));
fi2= E2 .* P2 + H2;


%female e3\e4
E3=3.68;
F3=0.00319;
G3=0;
H3=1;
k31=62;
k32=0;
rm3=0.94;
m3=0.5;

P3 = exp(-F3 .* ((x-k31).^2) - G3.*(x-k32));
fi3 = E3 .* P3 + H3;



%male e3\e4
E4=1.92;
F4=0.00103;
G4=0;
H4=0;
k41=51;
k42=0;
rm4=0.6;
m4=0.5;

P4 = exp(-F4 .* ((x-k41).^2) - G4.*(x-k42));
fi4= E4 .* P4 + H4;


plot(x,fi1,x,fi2,x,fi3,x,fi4);
legend('e4/e4 female','e4/e4 male','e3/e4 female','e3/e4 male');
title(' Modelled risk of AD, relative to the e3/e3 genotype, for e4/e4 and e3/e4 genotypes,Based on odds ratios');
xlabel('Age(Year)');
ylabel('Odd ratio');
