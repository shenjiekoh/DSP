clc;
clear;
close;

T = 1/4;
N = 16;
n = 0:N-1;
hn = cos(2*pi*n*T);
wr = ones(1,N);
Hk = fft(hn.*wr);
W = @(f) exp(1j*pi*(N-1)*T*f).*sinc(N*T*f)./sinc(T*f)*N; % sinc(x)=sin(pi*x)/(pi*x) in MATLAB
Hk_theo = 1/2*W(n/(N*T)-1) + 1/2*W(n/(N*T)+1);
plot(n,abs(Hk),'o',n,abs(Hk_theo),'x');
title('Result oh H[k]');
xlabel('k'); ylabel('|H[k]|');
legend('FFT','Theoretical');