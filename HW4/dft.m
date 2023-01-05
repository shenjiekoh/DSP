% flag=1:DFT   flag=-1:IDFT
function result = dft(data, N, flag)
WN = exp(-1i*2*pi/N);
if flag == 1
    W = WN.^((0:N-1)'*(0:N-1));
    x = data.';
    result = (W*x).';
end
if flag == -1
    W = WN.^(-(0:N-1)'*(0:N-1));
    X = data.';
    result = (1/N)*(W*X).';
end