clc;
clear;
close;

h = @(t) cos(2*pi*t);
T = 0.1;
for i = 8:2:14
    N = 2^i;
    n = 0:N-1;
    hn = h(n*T);
    tic;
    H_d = dft(hn,N,1);
    t1 = toc;
    tic;
    H = fft(hn,N);
    t2 = toc;
    plot(i,t1/t2,'o');
    hold on
    title('Time comparison between DFT and FFT for N=2^i');
    xlabel('i'); ylabel('t_1/t_2');
    disp([t1,t2]);
end