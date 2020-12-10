%%% Pactica 4

%% Ejemplo 1.1
syms x 
int(x*exp(x)) 
int(x*exp(x),0,1)  
int(1/x^2,3,inf) 
int(1/x,1,inf)
%% Ejemplo 1.2
syms x
f=(x^3-2*x^2-6*x+4)*log(x); 
pretty(f) 
corte=solve(f) 
double(corte)

ezplot(f,[0,4])
grid on 
int(f,0.5858,1)-int(f,1,3.4142) 
double(ans)

%% Ejemplo 1.3
syms x 
f=(x-1)/(x+sqrt(x)), g=2*x-2 
corte=solve(f-g) 
double(corte)

ezplot(f,[0,2]) 
hold on 
ezplot(g,[0,2]) 
grid on 
area=int(f-g,0.1340,1) 
double(area)


