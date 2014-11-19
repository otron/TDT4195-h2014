function res = medianfilter(img, n, m)
    [height, width] = size(img);
    a = (n-1)/2;
    b = (m-1)/2;
    newOx = a+1;
    newOy = b+1;
    res = img(newOx:height-a, newOy:width-b);
    for i = newOx:height-a
        for j = newOy:width-b
            res(i-a, j-b) = med(neighborhood(img, i, j, n, m));
        end
    end
end

%It's a median filter.
