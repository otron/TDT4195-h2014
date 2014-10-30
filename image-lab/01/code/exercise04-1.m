% use gamma-transform!
img = im2double(imread("TestImages/Question\ 4/einstein_lowcontrast.png"));
% imadjust returns a black image unless the image
% is normalized (https://lists.gnu.org/archive/html/octave-bug-tracker/2013-09/msg00320.html)
stretchlim(img)

%normal gamma transform
img_ng = imadjust(img);
imshow(img_ng)
pause()

img_b = imadjust(img, stretchlim(img));
imshow(img_b)
pause(), stretchlim(img)
