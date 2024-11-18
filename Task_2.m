clear all;
close all;
clc;

% Discrete representation 
n = 32;
t = linspace(0,2*pi,n);
f = sin(t);

%% polynomail reconstruction
p_order = 5;
coeff = polyfit(t,f,p_order);
f_rec = polyval(coeff,t);

t_ext = linspace(0,10,101);
f_rec_ext = polyval(coeff,t_ext);

% Plotting
plot(t,f,'or','LineWidth',0.5,'MarkerFaceColor','r')
hold on;
plot(t,f_rec,'-k','LineWidth',2)
plot(t_ext,f_rec_ext,'--b','LineWidth',2)