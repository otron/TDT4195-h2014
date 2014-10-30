img = imread("TestImages/Question\ 5/cameraman.png");
img_sp = imnoise(img, 'salt & pepper', 0.5);
imshow(img_sp)
pause()
