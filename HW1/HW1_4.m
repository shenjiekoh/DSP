clc;
clear;
close;

f = linspace(-1.5,1.5,500);
f0 = 1;
for N = [3 5 10 30]
    H = sin(pi*(2*N+1)*f/f0)./sin(pi*f/f0);
    figure(find([3 5 10 30]==N));
    plot(f,H);
    title(sprintf('N = %d', N));
    xlabel('f'); ylabel('H(f)');
end