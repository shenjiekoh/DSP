clc;
clear;
close;

% f(t)
a0 = 0;
t = linspace(-3,4,1000);
T = 2;
f = a0*ones(1,length(t));
for n = 1:20
    an = 0;
    bn = 2/(n*pi)*(1-(-1)^n);
    f = f + an*cos(2*pi*n.*t/T) + bn*sin(2*pi*n.*t/T);
end
f_true = square(pi*t);
overshoot_f = (max(abs(f))-1)/2;
figure(1);
plot(t,f,'--',t,f_true);
title('f(t) (n=20)');
xlabel('t'); ylabel('f(t)');
axis([-3 4 -2 2]);
legend('Fourier series', 'True function')

% g(t)
a0 = 0;
t = linspace(-5*pi,5*pi,1000);
T = 2*pi;
g = a0*ones(1,length(t));
for n = 1:50
    an = 0;
    bn = -2/n*(-1)^n;
    g = g + an*cos(2*pi*n.*t/T) + bn*sin(2*pi*n.*t/T);
end
g_true = pi*sawtooth(t-pi);
overshoot_g = (max(abs(g))-pi)/(2*pi);
figure(2);
plot(t,g,'--',t,g_true);
title('g(t) (n=50)');
xlabel('t'); ylabel('g(t)');
axis([-5*pi 5*pi -10 10]);
legend('Fourier series', 'True function')

% h(t)
a0 = 0.5;
t = linspace(-3,3,1000);
T = 2;
h = a0*ones(1,length(t));
for n = 1:10
    an = 2*(1-(-1)^n)/(n*pi)^2;
    bn = 0;
    h = h + an*cos(2*pi*n.*t/T) + bn*sin(2*pi*n.*t/T);
end
h_true = -0.5*sawtooth(pi*t,1/2) + 0.5;
figure(3);
plot(t,h,'--',t,h_true);
title('h(t) (n=10)');
xlabel('t'); ylabel('h(t)');
axis([-3 3 -1 2]);
legend('Fourier series', 'True function')