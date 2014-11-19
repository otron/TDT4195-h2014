img1 = imread('img/bricks_bw.png');
img2 = double(imread('img/cameraman.png'));

img2f = fft2(img2, size(img2)(1), size(img2)(2));
plot(log(1+abs(fftshift(img2f))))
pause()

img1f = fft2(img1, size(img1)(1), size(img1)(2));
plot(log(1+abs(fftshift(img2f))))
pause()
