% random 4x4 matrix
A = ceil(rand(4,4)*8) - 1;

for i = 1:8
    B(i) = sum(sum(A == i-1))/16;
end

% the cumulative distribution function?
function res = cdf(hist, i)
res = 0;
    for n = 1:i
        res += hist(n);
    end
end

% yeah no, couldn't figure out how to do the last bit.
