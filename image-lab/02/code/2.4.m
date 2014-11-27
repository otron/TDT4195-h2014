img = imread('img/lena.png');

[mag, dir] = imgradient(img);
imwrite(mag, '2_out/2-4_mag.png');

[nr, nc] = size(img);
[x y] = meshgrid(1:nc, 1:nr);
imshow(img);
hold on
imq = quiver(x, y, mag, dir)
pause()

