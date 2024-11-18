% symbolic (continous function)
syms f t
f = sin(t);
D = diff(f,t);

% Discrete representation 
n = 6;
t_d = linspace(0,2*pi,n);
f_d = sin(t_d);
f_def = gradient(f_d,t_d);


%plotting
fplot(t,f,[0,2*pi],'-k','Linewidth',2)
hold on
fplot(t,D,[0,2*pi],'b')

plot(t_d,f_d,'--or','Linewidth',2);

%plot(t_d,f_def,[0,2*pi],'b')
