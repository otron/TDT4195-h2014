function res = neighborhood(img, x, y, n, m)
    a = (n-1)/2;
    b = (m-1)/2;
    res = img(x-a:x+a, y-b:y+b);
end
