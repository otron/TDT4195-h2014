img1 = imread('2_out/2-1_sp.png');
img2 = imread('2_out/2-1_gaus.png');

vals = [3, 5, 9];

for i = 1:length(vals)
    imwrite(medianfilter(img1, vals(i), vals(i)),
        strcat('2_out/2-2_sp_', num2str(vals(i)), 'x', num2str(vals(i)), '.png'));
    imwrite(medianfilter(img2, vals(i), vals(i)),
        strcat('2_out/2-2_gaus_', num2str(vals(i)), 'x', num2str(vals(i)), '.png'));
end
