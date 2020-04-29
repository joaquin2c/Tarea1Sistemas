A=[0 1 0;0 0 1;-6 7 0]
x0=[1;0;1]
b=[0;0;2];
c=[1 0 0]
u=2;
sympref('FloatingPointOutput',true)
syms a a1 a2 t
eq=[exp(t) == a+a1+a2, exp(-3*t)==a-3*a1+9*a2, exp(2*t)==a+2*a1+4*a2];
s=solve(eq,[a a1 a2])
eat=s.a*[1 0 0;0 1 0;0 0 1]+s.a1*A+s.a2*(A^2)
Pt=eat*x0
St=eat*b

Pt2=c*eat*x0
St2=c*eat*b
