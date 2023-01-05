clc;
clear;
close;

N1 = -6;
N2 = 6;
T = 1/6;
n = N1:N2;
td = n/6;
t = -1:0.001:1;
h = @(t) cos(2*pi*t);
hn = h(td);
hr = hr(t,hn,N1,N2,T);
plot(t,h(t));
hold on
plot(td,h(td),'o');
hold on
plot(t,hr,'--');
title('h(t)=cos(2\pit)');
xlabel('t'); ylabel('h(t)');
legend('Original curve', 'Data points', 'Reconstructed curve');