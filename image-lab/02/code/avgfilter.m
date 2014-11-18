function res = avgfilter(img, n, m)
    [height, width] = size(img);
    a = (n-1)/2;
    b = (m-1)/2;
    res = img(a+1:height-a, b+1:width-b);
    for i = a+1:height-a
        for j = b+1:width-b
            res(i-a, j-b) = (1/(n*m))*avg(neighborhood(img, i, j, n, m));
        end
    end
end
