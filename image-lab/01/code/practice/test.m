img = imread('static/bricks.png');
[dimx,dimy] = size(img);
tx = linspace(1, dimx, dimx);
ty = linspace(1, dimy, dimy);
surf(tx, ty, img);
shading interp

view(0,90)
pause()
view(30,65)
pause()
