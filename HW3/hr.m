function h = hr(t, hn, N1, N2, T)
h = zeros(size(t));
n = N1:N2;
f = @(x) sum(hn.*sin(pi*(x-n*T)/T)./(pi*(x-n*T)/T));
for i = 1:length(t)
    h(i) = f(t(i));
end