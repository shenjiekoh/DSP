clc;
clear;
close;

img = imread("Lenna.jpg");
img_gray = rgb2gray(img);
figure(1);
imshow(img_gray);
title("Grayscale Lenna.jpg");

sobelx = [-1 0 1; -2 0 2; -1 0 1];
Gx = zeros(size(img_gray));
for i = 2:size(img_gray,1)-1
    for j = 2:size(img_gray,2)-1
        Gx(i,j) = sum(flip(flip(sobelx,1),2).*double(img_gray(i-1:i+1,j-1:j+1)),'all');
    end
end

sobely = [-1 -2 -1; 0 0 0; 1 2 1];
Gy = zeros(size(img_gray));
for i = 2:size(img_gray,1)-1
    for j = 2:size(img_gray,2)-1
        Gy(i,j) = sum(flip(flip(sobely,1),2).*double(img_gray(i-1:i+1,j-1:j+1)),'all');
    end
end

G = abs(Gx) + abs(Gy);
G = uint8(G);
figure(2);
imshow(G);
title("Sobel Lenna using G = |G_x|+|G_y|");

G(G<127) = 0;
figure(3);
imshow(G);
title("Sobel Lenna after thresholding");