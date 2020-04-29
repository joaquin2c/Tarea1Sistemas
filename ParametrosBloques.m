u=2;
t0=[298;295;293]
Q=5000;
c1=4181;
c2=892;
c3=3770;
m1=6;
m2=0.02;
m3=0.4;
Aa1=0.19;
A12=0.032;
A21=A12;
A23=A12;
A32=A23;
ha1=2500;
h12=4000;
h21=h12;    
h23=5000;
h32=h23;
A=[-(h21*A21+ha1*Aa1)/(m1*c1) (h21*A21)/(m1*c1) 0;(h12*A12)/(m2*c2) (-h12*A12-h32*A32)/(m2*c2) (h32*A32)/(m2*c2);0 (h23*A23)/(m3*c3) -(h23*A23)/(m3*c3)]
B=[Q/(m1*c1);0;0]
C=[1 0 0;0 1 0;0 0 1]
Xa=[293*(ha1*Aa1)/(m1*c1);0;0];
D=[0;0;0]
tiempo=out.ScopeData.time;
tempA=out.ScopeData.signals.values(:,1);
tempL=out.ScopeData.signals.values(:,2);
tempM=out.ScopeData.signals.values(:,3);

hold on
plot(tiempo,tempA)
plot(tiempo,tempL)
plot(tiempo,tempM)
legend({'Agua','Lata','Leche Condensada'},'Location','southeast')
xlabel('Tiempo [segundos]')
ylabel('Temperatura [K]')
title('Temperatura de la los tres medios')
hold off