%%% Segundo examen lab

%% Ejercicio 1
limit((x-sin(x))/x^3,x,0,'right')
limit((x-sin(x))/x^3,x,0,'left')

%%
syms x
A= x^3+x^2-1
pretty(A)
% primera derivada
df=diff(A);
pretty(df)
solve(df)
double(ans)
% estudiamos los intervalos de monotonia
subs(df,x,[-5 -0.5 2])

%%
syms x
B= x^2/(x-1);
dfb=diff(B);
solve(dfb)

% asintota horizontal
limit(B,x,inf)
limit(B,x,-inf)
