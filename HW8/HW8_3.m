clc;
clear;
close;

N = 40;
alpha = (N-1)/2;
k = 0:N/2-1;
w = k*2*pi/N;
Ak = 1*(w >= 0 & w <= pi/2);
hd = sin(pi/2*(k-alpha))./(pi*(k-alpha));

win1 = rectwin(N)';
hn = hd.*win1(1:N/2);
omega = linspace(0,2*pi,1e3);
hn = cat(2,hn,hn(end:-1:1));
H = sum(hn'.*exp(-1i*(0:N-1)'.*omega),1);
figure(1);
stem((0:N-1),hn,'.');
title('h[n]');
xlabel('n');
ylabel('h[n]');
figure(2);
subplot(2,1,1);
stem(w,Ak,'.');
hold on;
plot(omega,abs(H));
title('A_k and |H(e^{j\omega})|, Rectangular window');
xlabel('\omega');
ylabel('|H(e^{j\omega})|');
xlim([0,2*pi]);
legend('A_k', '|H(e^{j\omega})|');
set(gca,'XTick',0:pi/3:2*pi);
set(gca,'XTickLabel',{'0','\pi/3','2\pi/3','\pi','4\pi/3','5\pi/3','2\pi'});
subplot(2,1,2);
plot(omega,angle(H));
title('\angleH(e^{j\omega}), Rectangular window');
xlabel('\omega');
ylabel('\angleH(e^{j\omega})');
xlim([0,2*pi]);
set(gca,'XTick',0:pi/2:2*pi);
set(gca,'XTickLabel',{'0','\pi/2','\pi','3\pi/2','2\pi'});

win2 = hanning(N)';
hn = hd.*win2(1:N/2);
hn = cat(2,hn,hn(end:-1:1));
H = sum(hn'.*exp(-1i*(0:N-1)'.*omega),1);
figure(3);
stem((0:N-1),hn,'.');
title('h[n]');
xlabel('n');
ylabel('h[n]');
figure(4);
subplot(2,1,1);
stem(w,Ak,'.');
hold on;
plot(omega,abs(H));
title('A_k and |H(e^{j\omega})|, Hanning window');
xlabel('\omega');
ylabel('|H(e^{j\omega})|');
xlim([0,2*pi]);
legend('A_k', '|H(e^{j\omega})|');
set(gca,'XTick',0:pi/3:2*pi);
set(gca,'XTickLabel',{'0','\pi/3','2\pi/3','\pi','4\pi/3','5\pi/3','2\pi'});
subplot(2,1,2);
plot(omega,angle(H));
title('\angleH(e^{j\omega}), Hanning window');
xlabel('\omega');
ylabel('\angleH(e^{j\omega})');
xlim([0,2*pi]);
set(gca,'XTick',0:pi/2:2*pi);
set(gca,'XTickLabel',{'0','\pi/2','\pi','3\pi/2','2\pi'});

win3 = blackman(N)';
hn = hd.*win3(1:N/2);
hn = cat(2,hn,hn(end:-1:1));
H = sum(hn'.*exp(-1i*(0:N-1)'.*omega),1);
figure(5);
stem((0:N-1),hn,'.');
title('h[n]');
xlabel('n');
ylabel('h[n]');
figure(6);
subplot(2,1,1);
stem(w,Ak,'.');
hold on;
plot(omega,abs(H));
title('A_k and |H(e^{j\omega})|, Blackman window');
xlabel('\omega');
ylabel('|H(e^{j\omega})|');
xlim([0,2*pi]);
legend('A_k', '|H(e^{j\omega})|');
set(gca,'XTick',0:pi/3:2*pi);
set(gca,'XTickLabel',{'0','\pi/3','2\pi/3','\pi','4\pi/3','5\pi/3','2\pi'});
subplot(2,1,2);
plot(omega,angle(H));
title('\angleH(e^{j\omega}), Blackman window');
xlabel('\omega');
ylabel('\angleH(e^{j\omega})');
xlim([0,2*pi]);
set(gca,'XTick',0:pi/2:2*pi);
set(gca,'XTickLabel',{'0','\pi/2','\pi','3\pi/2','2\pi'});