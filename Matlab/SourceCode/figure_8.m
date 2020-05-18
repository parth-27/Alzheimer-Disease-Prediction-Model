
x = 60 : 90 ;

% e2/e4 female
E1=4.21;
F1=0.01020;
G1=0;
H1=1;
k11=68;
k12=0;


P1 = exp(-F1 .* ((x-k11).^2) - G1.*(x-k12));
fi1= E1 .* P1 + H1;



%e2/e4 male
E2=1.42;
F2=0.00506;
G2=0;
H2=0;
k21=67;
k22=0;


P2 = exp(-F2 .* ((x-k21).^2) - G2.*(x-k22));
fi2= E2 .* P2 + H2;


%female e2\e2 & e2/e3
E3=0.675;
F3=0;
G3=0.00692;
H3=0;
k31=0;
k32=60;

P3 = exp(-F3 .* ((x-k31).^2) - G3.*(x-k32));
fi3 = E3 .* P3 + H3;



%male e2\e4 & e2/e3
E4=0.434;
F4=0;
G4=0.01600;
H4=0;
k41=0;
k42=60;

P4 = exp(-F4 .* ((x-k41).^2) - G4.*(x-k42));
fi4= E4 .* P4 + H4;



plot(x,fi1,x,fi2,x,fi3,x,fi4);
legend('e2/e4 female','e2/e4 male','e2/e2 & e2/e3 female','e2/e2 & e2/e3 male');
title(' Modelled risk of AD, relative to the e3/e3 genotype, for e2/e4 and e2/e2 & e2/e3 genotypes,Based on odds ratios');
xlabel('Age(Year)');
ylabel('Odd ratio');
