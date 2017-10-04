% calculate mean and std of data from histogram
clear;clc

num = 100;
signal = rand(1,num);
num_steps = 1e7;
bin_centers = linspace(0,1,num_steps);

% matlab implementation
means = mean(signal);
stds = std(signal);

% from addition and multiplication
meanc = 0;
for i=1:num;
    meanc = meanc+signal(i);
end
meanc = meanc/num;
stdc = sqrt(sum((signal-meanc).^2)./(num-1));

% from histogram 
H = hist(signal, bin_centers);
meanh = sum(bin_centers.*H)/num;
stdh = sqrt(sum(((bin_centers-meanh).^2).*H)/(num-1));


if ~isequal(meanh, means)
    fprintf('mean difference: %.3e\n', meanh-means);
end

if ~isequal(stdh, stds)
    fprintf('mean difference: %.3e\n', stdh-stds);
end


