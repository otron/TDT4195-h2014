function mag = magnitude(vec)
    mag = 0;
    for i = 1:size(vec)
        mag += vec(i);
    end
    mag = sqrt(mag);
end
