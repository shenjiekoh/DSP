clc;
clear;
close;

%(a)
N = 64;
A0 = 1;
A1 = 0.75;
w0 = 2*pi/14;
w1 = 4*pi/15;
theta0 = 0;
theta1 = 0;
n = 0:N-1;
v = A0*cos(w0*n+theta0)+A1*cos(w1*n+theta1);
figure(1);
stem(n,v,'.');
title('v[n]');
xlabel('n'); ylabel('Amplitude');
xlim([0 N]);

%(b)
V = fft(v);
figure(2);
stem(n,real(V),'.');
title('Re\{V[k]\}');
xlabel('k,\omegaN/2\pi'); ylabel('Amplitude');
xlim([0 N]);

%(c)
figure(3);
stem(n,imag(V),'.');
title('Im\{V[k]\}');
xlabel('k,\omegaN/2\pi'); ylabel('Amplitude');
xlim([0 N]);

%(d)
figure(4);
stem(n,abs(V),'.');
title('|V[k]|');
xlabel('k,\omegaN/2\pi'); ylabel('Amplitude');
xlim([0 N]);

%(e)
figure(5);
stem(n,angle(V),'.');
title('\angleV[k]');
xlabel('k,\omegaN/2\pi'); ylabel('Radians');
xlim([0 N]);

%(f)
figure(6);
plot((0:1023)*2*pi/1024,abs(fft(v,1024)));
title('|V(e^{j\omega})|');
xlabel('\omega'); ylabel('Amplitude');
xlim([0 2*pi]);