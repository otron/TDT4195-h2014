function res = avgfilter(img, n, m)
    [height, width] = size(img);
    a = (n-1)/2;
    b = (m-1)/2;
    newOx = a+1;
    newOy = b+1;
    res = img(newOx:height-a, newOy:width-b);
    for i = newOx:height-a
        for j = newOy:width-b
            res(i-a, j-b) = (1/(n*m))*avg(neighborhood(img, i, j, n, m));
        end
    end
end
