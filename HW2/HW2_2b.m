clc;
clear;
close;

for n = 1:3
    T = [5 10 50];
    t = -T(n):T(n)/100000:T(n);
    A = 2;
    f0 = 10^n/T(n);
    h = A*cos(2*pi*f0*t);
    figure(n);
    subplot(2,1,1);
    plot(t,h);
    title(sprintf('f_0T = %d (f_0=%d, T=%d)', 10^n, f0, T(n)));
    xlabel('t'); ylabel('h(t)');
    xlim([-2 2]);
    Q = @(f) sin(2*pi*f*T(n))./(2*pi*f*T(n));
    f = -2*f0:f0/100000:2*f0;
    H = A*T(n)*(Q(f+f0)+Q(f-f0));
    subplot(2,1,2);
    plot(f,H);
    xlabel('f'); ylabel('H(f)'); 
end
