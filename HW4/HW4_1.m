clc;
clear;
close;

%(a)
h = @(t) cos(2*pi*t);
T = 0.1;
N1 = 16;
n1 = 0:N1-1;
H1 = fft(h(n1*T),N1);
figure(1);
plot(n1,abs(H1),'.-');
title('Amplitude of H[k] N=16');
xlabel('k'); ylabel('|H[k]|');
figure(2);
plot(n1,angle(H1),'.-');
title('Phase of H[k] N=16');
xlabel('k'); ylabel('\angleH[k]');

%(b)
N2 = 32;
n2 = 0:N2-1;
H2 = fft(h(n2*T),N2);
figure(3);
plot(n2,abs(H2),'.-');
title('Amplitude of H[k] N=32');
xlabel('k'); ylabel('|H[k]|');
figure(4);
plot(n2,angle(H2),'.-');
title('Amplitude of H[k] N=32');
xlabel('k'); ylabel('\angleH[k]');

%(c)
H1_d = dft(h(n1*T),N1,1);
figure(5);
plot(n1,abs(H1),'.-');
hold on
plot(n1,abs(H1_d),'o');
title('Amplitude of H[k] N=16');
xlabel('k'); ylabel('|H[k]|');
legend('FFT','DFT');
figure(6);
plot(n1,angle(H1),'.-');
hold on
plot(n1,angle(H1_d),'o');
title('Phase of H[k] N=16');
xlabel('k'); ylabel('\angleH[k]');
legend('FFT','DFT');

H2_d = dft(h(n2*T),N2,1);
figure(7);
plot(n2,abs(H2),'.-');
hold on
plot(n2,abs(H2_d),'o');
title('Amplitude of H[k] N=32');
xlabel('k'); ylabel('|H[k]|');
legend('FFT','DFT');
figure(8);
plot(n2,angle(H2),'.-');
hold on
plot(n2,angle(H2_d),'o');
title('Phase of H[k] N=32');
xlabel('k'); ylabel('\angleH[k]');
legend('FFT','DFT');

%(d)
h1 = ifft(H1,N1);
h1_d = dft(H1_d,N1,-1);
figure(9);
plot(n1,h1,n1,h1_d,'x');
title('h[n] N=16');
xlabel('n'); ylabel('h[n]');
axis([0 N1-1 -1.5 1.5]);
legend('IFFT','IDFT');
h2 = ifft(H2,N2);
h2_d = dft(H2_d,N2,-1);
figure(10);
plot(n2,h2,n2,h2_d,'x');
title('h[n] N=32');
xlabel('n'); ylabel('h[n]');
axis([0 N2-1 -1.5 1.5]);
legend('IFFT','IDFT');