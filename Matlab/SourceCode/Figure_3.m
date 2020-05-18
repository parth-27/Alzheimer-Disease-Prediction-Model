x = 40 : 90 ;

% e3/e4 both
E1=2.98;
F1=0.00312;
G1=0;
H1=1;
k11=62;
k12=0;


P1 = exp(-F1 .* ((x-k11).^2) - G1.*(x-k12));
fi1= E1 .* P1 + H1;



%e4/e4 both
E2=13.5;
F2=0.00529;
G2=0;
H2=1;
k21=60;
k22=0;


P2 = exp(-F2 .* ((x-k21).^2) - G2.*(x-k22));
fi2= E2 .* P2 + H2;


%e2\e4 Both
E3=2.87;
F3=0.00938;
G3=0;
H3=1;
k31=68;
k32=0;

P3 = exp(-F3 .* ((x-k31).^2) - G3.*(x-k32));
fi3 = E3 .* P3 + H3;



%e2\e2 & e2/e3 Both
E4=0.754;
F4=0;
G4=0.00859;
H4=0;
k41=0;
k42=60;

P4 = exp(-F4 .* ((x-k41).^2) - G4.*(x-k42));
fi4= E4 .* P4 + H4;



plot(x,fi1,x,fi2,x,fi3,x,fi4);
legend('e3/e4 Both ','e4/e4 Both','e2/e4 Both',' e2/e2 & e2/e3 Both');
title(' Modelled risk of AD, relative to the e3/e3 genotype, for e3/e4,e4/e4,e2/e4 & e2/e3 and e2/e2 & e2/e3 genotypes,Based on odds ratios');
xlabel('Age(Year)');
ylabel('Odd ratio');
