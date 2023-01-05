clc;
clear;
close;

f1 = 1*10^3;
f2 = 1.01*10^3;
fs = 2500;
T = 1/fs;
N = 1000;
n = 0:N-1;
vn = cos(2*pi*f1*n*T)+cos(2*pi*f2*n*T);
N_fft = 2^nextpow2(N);
V = fft(vn,N_fft);
figure(1);
stem(0:N_fft-1,abs(V),'.');
title('DFT of v[n] (N=1000,f_s=2500Hz)');
xlabel('k'); ylabel('V[k]');

N_fft = 16*2^nextpow2(N);
V = fft(vn,N_fft);
figure(2);
plot((-N_fft/2:N_fft/2-1)*fs/N_fft,abs(fftshift(V)));
title('DTFT of v[n] (N=1000,f_s=2500Hz)');
xlabel('f'); ylabel('V(f)');

w = bartlett(N)';
V_b = fft(vn.*w,N_fft);
figure(3);
stem(0:N_fft-1,abs(V_b),'.');
title('DFT of v[n] with Bartlett window (N=1000,f_s=2500Hz)');
xlabel('k'); ylabel('V[k]');

V_b = fft(vn.*w,N_fft);
figure(4);
plot((-N_fft/2:N_fft/2-1)*fs/N_fft,abs(fftshift(V_b)));
title('DTFT of v[n] with Bartlett window (N=1000,f_s=2500Hz)');
xlabel('f'); ylabel('V(f)');