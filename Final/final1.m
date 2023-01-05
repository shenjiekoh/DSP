clc;
clear;
close;

img_w = 1500;
img_h = 300;

img1 = imread("1-1.jpg");
img1_gray = rgb2gray(img1);
fsx1 = img_w/size(img1,2);
fsy1 = img_h/size(img1,1);
T = adaptthresh(img1_gray,0.4,'ForegroundPolarity','dark');
BW = imbinarize(img1_gray,T);
F1 = fft2(BW,16*2^nextpow2(size(img1,1)),16*2^nextpow2(size(img1,2)));
figure(1);
imagesc(abs(fftshift(F1)));

img2 = imread("1-2.jpg");
img2_gray = rgb2gray(img2);
fsx2 = img_w/size(img2,2);
fsy2 = img_h/size(img2,1);
F2 = fft2(img2_gray,16*2^nextpow2(size(img2,1)),16*2^nextpow2(size(img2,2)));
figure(2);
imagesc(abs(fftshift(F2)));