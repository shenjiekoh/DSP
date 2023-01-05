clc;
clear;
close;

N1 = -9;
N2 = 8;
T = 1/1.5;
n = N1:N2;
td = n/1.5;
t = -3:0.001:3;
h = @(t) cos(2*pi*t);
hn = h(td);
hr = hr(t,hn,N1,N2,T);
plot(t,h(t));
hold on
plot(t,hr,'--');
title('h(t)=cos(2\pit)');
xlabel('t'); ylabel('h(t)');
legend('Original curve', 'Reconstructed curve');