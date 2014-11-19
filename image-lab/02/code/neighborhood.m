function res = neighborhood(img, x, y, n, m)
    a = (n-1)/2;
    b = (m-1)/2;
    res = img(x-a:x+a, y-b:y+b);
end

%!assert (neighborhood(1:9, 1, 5, 1, 1) == 5)
