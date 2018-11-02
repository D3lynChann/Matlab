clc; clear; close all;
 
gray = imread('F:\pic\Ls\a_without_shadow.jpg');
figure;
subplot(121),imshow(gray);
 
cmap = colormap(jet(256));
rgb = ind2rgb(gray,cmap);
subplot(122),imshow(rgb);