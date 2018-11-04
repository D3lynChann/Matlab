clc; clear; close all;
BW=imread('F:\pic\ls\gz3revdsfsdasd.bmp');
%BW=rgb2gray(BW);
BW2 = double(bwareaopen(BW,400, 4));
imwrite(BW2,'F:\pic\ls\gz3revssadaasds.bmp')