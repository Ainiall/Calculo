%%% Practica 1

%% Ejercicio 1
A=10000/(400+6*500)     %Sol: 2.9412
format short
B=(270^(1/3))*(690+876)     % Sol: 10121.53
format short
C=(500*(645+7843))/(45+9)       % Sol:78592.59
format long
D=(21+78)/(sqrt(43)+80^3)       % Sol:0.00019336
 
clear

%% Ejercicio 2
format short
x=1;      % caso 1
A=x^2/(6*x+x^3)     % Sol:0.1429
x=-0.5;   % caso 2
A=x^2/(6*x+x^3)     % Sol:-0.0800

x=2;      % caso 1
B=sin(x)/(1+cos(x)) % Sol:1.5574
x=2*pi/180;   % caso 2
% POR DEFECTO ESTA EN RADIANES
% RADIANES= GRADOS*PI/180
B=sin(x)/(1+cos(x)) % Sol:0.0175

x=4;      % caso 1
C=log(abs(x+2)) % sol: 1.7918
x=-2;     % caso 2
C=log(abs(x+2)) % sol: -Inf
x=-10;      % caso 3
C=log(abs(x+2)) % sol: 2.0794

x=5;      % caso 1
D=exp(x)/(exp(2*x)+1) % sol:0.0067376
x=-8;      % caso 2
D=exp(x)/(exp(2*x)+1) % sol:0.00033546

clear

%% Ejercicio 3

syms x
A=x^3-3*x+2
sA=solve(A)  %sol: 1,1-2
pretty(sA)

B=x^4-2*x+1
sB= solve(B) %sol: 1,05437, -0.7718+1.1151i, -0.7718-1.1151i
pretty(sB)

C= log(x^2-1)-1
sC=solve(C) %sol: -1.9283, 1.9283
pretty(sC)
D=sin(x)+1
sD=solve(D) %sol{-pi/2 +2kpi; kcZ}
pretty(sD)

clear

% Ejercicio 4

syms x
f=x*sin(x);
g=(x^2-1);
h=exp(x+3);

A=(subs(f,x,1)+subs(g,x,4))*subs(h,x,4)
solve(A) % Sol: 1.7372�104 
% recordatorio: g compuesta con f -< f o g
b=compose(h,g)
B=compose(b,f) % Sol: e^x^(2 sen2 x+2)

c=compose(f,g)
C=compose(c,h) % Sol: (e^(2(x+3)) -1)sen(e^(2(x+3)) -1) 

d=finverse(h)
D=compose(h,d) % Sol: x 

E=compose(d,h) % Sol: x 

F=compose((f+g),h) % Sol: e^(x+3) sene^(x+3) + e^2(x+3) -1