I = double(imread('img/cameraman.png'));
illustrate = uint8(I); %figure(); imshow(illustrate);
Iscaled = double(I)/255.0;

density = 0.25;
Inoisy = imnoise(Iscaled, 'salt & pepper', density);
illustrate = uint8(Inoisy*255.0); %figure(); imshow(illustrate);
filename=sprintf('withnoise.png');
imwrite(illustrate, filename);

mean = 0.0; std = 0.1;
Inoisy = imnoise(Iscaled, 'gaussian', mean, std);
illustrate = uint8(Inoisy*255.0); %figure(); imshow(illustrate);
filename=sprintf('withgaussian.png');
imwrite(illustrate, filename);
