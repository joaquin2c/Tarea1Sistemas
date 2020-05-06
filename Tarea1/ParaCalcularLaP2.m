A=[0 1 0;0 0 1;-6 7 0]

Abloques=[-0.0028 0.0004 0;0.6192 -1.6954 1.0762;0 0.0127 -0.0127]
e=eig(Abloques);

x0=[1;0;1]
b=[0;0;2];
c=[1 0 0]
u=2;

sympref('FloatingPointOutput',true)
syms a a1 a2 t aa1 aa2 aa T1 T2 T3

eq=[exp(t) == a+a1+a2, exp(-3*t)==a-3*a1+9*a2, exp(2*t)==a+2*a1+4*a2];
s=solve(eq,[a a1 a2])
eat=s.a*[1 0 0;0 1 0;0 0 1]+s.a1*A+s.a2*(A^2)


Pt=eat*x0
St=eat*b

Pt2=c*eat*x0
St2=c*eat*b

eq2=[exp(e(1)*t) == aa+e(1)*aa1+e(1)^2*aa2,exp(e(2)*t) == aa+e(2)*aa1+e(2)^2*aa2, exp(e(3)*t) == aa+e(3)*aa1+e(3)^2*aa2];
s2=solve(eq2,[aa aa1 aa2])

eat2=s2.aa*[1 0 0;0 1 0;0 0 1]+s2.aa1*A+s2.aa2*(A^2)