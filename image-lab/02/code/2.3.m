% load a 512x512 b&w image
img = imread('img/lena.png');
% downscale to 3/4ths original size
imgrs = imresize(img, 0.75);
% save downscaled image
imwrite(imgrs, '2_out/2-3_ds.png')

sigma = 0.5;
for i = 1:8
    G = fspecial('gaussian', [5 5], sigma);
    imwrite(imfilter(imgrs, G),
        strcat('2_out/2-3_g', num2str(sigma), '.png'));

sigma = sigma*2;
end

