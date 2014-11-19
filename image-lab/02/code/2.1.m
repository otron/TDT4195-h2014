% generate noisy images
src = double(imread('img/cameraman.png'));
src = double(src)/255.0;

% s&p
density = 0.25;
imwrite(imnoise(src, 'salt & pepper', density),
    '2_out/2-1_sp.png');

% gaus
avg = 0.0; stdd = 0.1;
imwrite(imnoise(src, 'gaussian', avg, stdd),
    '2_out/2-1_gaus.png');


img1 = imread('2_out/2-1_sp.png');
img2 = imread('2_out/2-1_gaus.png');

vals = [3, 5, 9];

for i = 1:length(vals)
    imwrite(avgfilter(img1, vals(i), vals(i)),
        strcat('2_out/2-1_sp_', num2str(vals(i)), 'x', num2str(vals(i)), '.png'));
    imwrite(avgfilter(img2, vals(i), vals(i)),
        strcat('2_out/2-1_gaus_', num2str(vals(i)), 'x', num2str(vals(i)), '.png'));
end
