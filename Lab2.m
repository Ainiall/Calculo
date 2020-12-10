%%% Practica 2

%% Ejercicio 1
% a)
limit((exp(-x)-1)/x,x,0) %sol: -1
% b)
limit(cos(x)^(1/sin(x)),x,0) %sol: 1
% c)
limit(((2*x+3)/(2*x+1))^(x+1),x,+inf) %sol: e
% d)
limit ((sin(x)-cos(x))/(1-tan(x)),x,pi/4) %sol: -sqrt(2)/2
% e)
limit(8/2+exp(-1/x),x,0) %sol: NO EXISTE

%% Ejercicio 2
syms x
f1=x/exp(1/x); f2=1; f3=sqrt(x^2+1); %no lo muestra
ezplot(f1,[-4,0])
hold on %mantenemos la grafica
plot(0,1,'r*') % x=0, y=1
hold on %mantenemos la grafica
ezplot(f3,[0,5]) 
axis([-4,5,-5,5]) % reescalamos
%sol: f es continua en R-{0}

%% Ejercicio 3
syms x
f4=exp(-x^2)*sin(pi*x^3)
ezplot(f4,[-2,2])
% Simetria impar f(-x) = -f(x) 
% Acotada
% Tiene max y min absolutos  data cursor??

%% Ejercicio 4
f5=(x^2/(x-2)^2); f6=1/(1+2^(1/x)); f7=x*exp(1/(x-1)); f8=log(x^2+3*x+2);
% a HORIZONTALES sol: y=1
limit(f5,x,-inf)
limit(f5,x,+inf)
% a VERTICALES sol: x=2
limit(f5,x,2,'right')
limit(f5,x,2,'left')
% b HORIZONTALES sol: y=1/2
limit(f6,x,-inf)
limit(f6,x,+inf)

% c HORIZONTALES sol: no tiene
limit(f7,x,-inf)
limit(f7,x,+inf)
% c VERTICALES sol: x=1 por la derecha
limit(f7,x,1,'right') 
limit(f7,x,1,'left') 
% d HORIZONTALES sol: no tiene asintotas horizontales
limit(f8,x,-inf)
limit(f8,x,+inf)
% d VERTICALES sol: x=-2 izquierda, x=-1 derecha
limit(f8,x,-1,'right') 
limit(f8,x,-1,'left') 
limit(f8,x,-2,'right') 
limit(f8,x,-2,'left')