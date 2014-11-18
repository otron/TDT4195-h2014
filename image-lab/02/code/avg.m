function res = avg(T)
    res = T;
    for i = 1:ndims(T)
        res = mean(res);
    end
end
