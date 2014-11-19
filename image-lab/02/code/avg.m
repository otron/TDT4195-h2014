function res = avg(T)
    res = T;
    for i = 1:ndims(T)
        res = mean(res);
    end
end

%!assert (avg(ones(4)) == 1)
%!assert (avg(ones(3,3,3,3)) == 1)
%!assert (avg(zeros(3,3)) == 0)
%!assert (length(avg(rand(randi(1000)))) == 1)
