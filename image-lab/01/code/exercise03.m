% a) load both images
% b) if necessary, scale/normalize the gray-values of the flat-field image (img_flat)
% from the range [0, 255] to the range [0.0, 1.0]
img_rec = imread("TestImages/Question\ 3/disturbed_potw1144a.png");
img_flat = im2double(imread("TestImages/Question\ 3/flatfieldimage.png"));

% c) correct the distortions of the astronomical image
% by a pixel-wise divison of the normalized flat-field values.
img_rec_c = rdivide(img_rec, img_flat);

% d) save/show the resulting image
imwrite(img_rec_c, "q3-result.png");
imshow(img_rec_c)
pause()
