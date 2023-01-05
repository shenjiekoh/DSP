clc;
clear;
close;

%(a)
L = 64;
W = @(w) exp(-1j*w*(L-1)/2).*sin(w*L/2)./sin(w/2);
fs = 10000;
w = -pi:1/fs:pi;
W_a = W(w);
figure(1);
plot(w,abs(W_a));
xlim([-pi pi]);
title('Amplitude of W(e^{j\omega})');
xlabel('\omega'); ylabel('|W(e^{j\omega})|');
grid on

%(b)
A0 = 1;
A1 = 0.75;
theta0 = 0;
theta1 = 0;
w0 = 2*pi/6;
w1 = 2*pi/3;
V_b = A0/2*exp(1j*theta0)*W(w-w0)+A0/2*exp(-1j*theta0)*W(w+w0)+A1/2*exp(1j*theta1)*W(w-w1)+A1/2*exp(-1j*theta1)*W(w+w1);
figure(2);
plot(w,abs(V_b));
title('Amplitude of V(e^{j\omega}) for \omega_0 = 2\pi/6 and \omega_1 = 2\pi/3');
xlabel('\omega'); ylabel('|V(e^{j\omega})|');
xlim([-pi pi]);
grid on

%(c)
w0 = 2*pi/14;
w1 = 4*pi/15;
V_c = A0/2*exp(1j*theta0)*W(w-w0)+A0/2*exp(-1j*theta0)*W(w+w0)+A1/2*exp(1j*theta1)*W(w-w1)+A1/2*exp(-1j*theta1)*W(w+w1);
figure(3);
plot(w,abs(V_c));
title('Amplitude of V(e^{j\omega}) for \omega_0 = 2\pi/14 and \omega_1 = 4\pi/15');
xlabel('\omega'); ylabel('|V(e^{j\omega})|');
xlim([-pi pi]);
grid on

%(d)
w0 = 2*pi/14;
w1 = 2*pi/12;
V_d = A0/2*exp(1j*theta0)*W(w-w0)+A0/2*exp(-1j*theta0)*W(w+w0)+A1/2*exp(1j*theta1)*W(w-w1)+A1/2*exp(-1j*theta1)*W(w+w1);
figure(4);
plot(w,abs(V_d));
title('Amplitude of V(e^{j\omega}) for \omega_0 = 2\pi/14 and \omega_1 = 2\pi/12');
xlabel('\omega'); ylabel('|V(e^{j\omega})|');
xlim([-pi pi]);
grid on

%(e)
w0 = 2*pi/14;
w1 = 4*pi/25;
V_e = A0/2*exp(1j*theta0)*W(w-w0)+A0/2*exp(-1j*theta0)*W(w+w0)+A1/2*exp(1j*theta1)*W(w-w1)+A1/2*exp(-1j*theta1)*W(w+w1);
figure(5);
plot(w,abs(V_e));
title('Amplitude of V(e^{j\omega}) for \omega_0 = 2\pi/14 and \omega_1 = 4\pi/25');
xlabel('\omega'); ylabel('|V(e^{j\omega})|');
xlim([-pi pi]);
grid on