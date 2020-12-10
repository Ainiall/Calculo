%%% Primer examen lab

%% Ejercicio 1
syms x;

a=(x-(2/3))*(x-(6/3))*(x-(9/4));
factor(a)


% Apartado b
f=x^2-2;
g=x^3-x+5;
h=x^4+1;
b=compose(f,g);
B=compose(b,h)

c=compose(g,h);
C=compose(f,c)

%% Ejercicio 2
D=(x+1)/(exp((x^2)/(1-x))-1);
ezplot(D,[-60,60])
% asintota horizontal
limit(D,x,-inf);
limit(D,x,+inf);
% asintota oblicua
limit((D/x),x,+inf);
limit((D+x),x,+inf);
limit((D-(-x-1)),x,+inf);
% asintota vertical
limit(D,x,0,'right');
limit(D,x,0,'left');


%% Ejercicio 3
E=(cos(1/x))^x;
ezplot(E,[-10,10]);
limit(E,x,-inf);
limit(E,x,-inf);

%% Ejercicio 4
F=1/(1+exp((1/x)));
ezplot(F,[-10,10]);
% vertical
limit(F,x,0,'right')

