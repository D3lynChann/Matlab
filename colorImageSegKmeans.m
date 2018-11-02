clear;
clc;
I_rgb = imread('F:\pic\Ls\a.bmp');
figure();
imshow(I_rgb);
title('原始图像');
%
%将彩色图像从 RGB 转化到 lab 彩色空间?
C=makecform('srgb2lab');
I_lab=applycform(I_rgb,C);
%
%进行 K?mean 聚类将图像分割成 3 个区域?
ab=double(I_lab(:,:,2:3));%取出 lab 空间的 a 分量和 b 分量?
nrows=size(ab,1);
ncols=size(ab,2);

ab=reshape(ab,nrows*ncols,2);
nColors=3;
[cluster_idx, cluster_center] = kmeans(ab,nColors);

pixel_labels=reshape(cluster_idx,nrows,ncols);
figure();
imshow(pixel_labels,[]),title('聚类结果');
%显示分割后的各个区域?
segmented_images=cell(1,3);
rgb_label=repmat(pixel_labels,[1 1 3]);
for k=1:nColors
    color=I_rgb;
    color(rgb_label~=k)=0;
    segmented_images{k}=color;
end
figure(),imshow(segmented_images{1}),title('分割结果——区域 1');
figure(),imshow(segmented_images{2}),title('分割结果——区域 2');
figure(),imshow(segmented_images{3}),title('分割结果——区域 3');