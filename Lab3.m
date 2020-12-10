%%% Practica 3  

%% Ejemplos
syms x
f=x*sin(x)+log(x)
diff(f,x), pretty(ans)
diff(f),pretty(ans)
diff(f,x,3), pretty(ans)


f=(x^2-4*x+4)/x^3;
pretty(f)
df=diff(f);

subs(df,x,[-4,1,3,9])
% derivada segunda
d2f=diff(f,2); 
pretty(d2f)
solve(d2f)

subs(d2f,x,[-5 1 6 22])
% asintota vertical
limit(f,x,0,'right')
limit(f,x,0,'left')
%asintota horizontal
limit(f,x,inf)
limit(f,x,-inf)
%Representar la funcion
ezplot(f,[-10,15])
grid on
%%
%polinomio de taylor
syms x
f=cos(x);
taylor1(f,x,0,'order',5)
taylor2(f,x,0,'order',7)
taylor3(f,x,pi/4,'order',4)

ezplot(f,[-pi,pi])
hold on
ezplot(taylor1,[-3,3])
ezplot(taylor2,[-3,3])
ezplot(taylor3,[-3,3])
grid on
%% Ejercicio 1

% f(t)= 3t^4 -10t^3 +6t^2
syms t
% 2 meses= 2/12 
% t=2/12;
A=3*t^4-10*t^3+6*t^2; %0.1227
% primera derivada
df=diff(A);
solve(df) % puntos criticos 0 1/2 2 -> años solo miramos >0
subs(df,t,[0.25 1 3]) % creciente, decreciente,creciente
% max en 0.5 min en 2
% t=0.5; max 0.4375 punto x=0.5
A=3*t^4-10*t^3+6*t^2; %0.4375

% t=2; min -8 punto x=2
A=3*t^4-10*t^3+6*t^2; %-8
% empiezan las perdidas cuando t=0
A=3*t^4-10*t^3+6*t^2;
solve(A)
double(ans)
% las perdidas empiezan cuando t=0.7847 y acaban en t=2,5486
ezplot(A,[0,3])
grid on
% a la larga(cuando tiende a +inf) tiene ganancias

%% Ejercicio 2
B=exp((t-2)/2*t)/t; %t>0
pretty(B)
% primera derivada
df=diff(B);
pretty(df)
solve(df)
double(ans)
% estudiamos los intervalos de monotonia
subs(df,B,[-2 -0.5 0.5 2])