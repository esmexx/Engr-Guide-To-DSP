% mean and standard deviation using running statistics
clear;clc

Nx = 512;

x = rand(1,Nx);
signal = sin(x);

N = 0;
sumn = 0;
sum_squares = 0;

for i=1:length(x)
   N = N+1;
   sumn = sumn + signal(i);
   sum_squares = sum_squares + signal(i)^2;
   
   meann = sumn/N;
   
   if N == 1
       varn = 0;
       stdn = 0;
       continue;
   end
   
   varn = (sum_squares - sumn^2/N)/(N-1);
   stdn = sqrt(varn);
end

if ~isequal(meann, mean(signal))
    fprintf('mean difference: %.3e\n', meann-mean(signal));
end

if ~isequal(varn, var(signal))
    fprintf('variance difference: %.3e\n', varn-var(signal));
end
if ~isequal(stdn, std(signal))
    fprintf('std difference: %.3e\n', stdn-std(signal));
end







