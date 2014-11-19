img1 = imread('img/withnoise.png');
img2 = imread('img/withgaussian.png');

vals = [3, 5, 9];

for i = 1:length(vals)
    imwrite(avgfilter(img1, vals(i), vals(i)), 
        strcat('2_out/2.1_sp_', num2str(vals(i)), 'x', num2str(vals(i)), '.png'));
    imwrite(avgfilter(img2, vals(i), vals(i)), 
        strcat('2_out/2.1_gaus_', num2str(vals(i)), 'x', num2str(vals(i)), '.png'));
end
