%{
A=imread('F:\pic\Ls\L1s.bmp');
A=rgb2gray(A);
thres=graythresh(A);
Ab=im2bw(A,0.476470588235294);
imwrite(Ab,'F:\pic\Ls\L2sres.bmp')
figure(1)
imshow(Ab);
Ac=double(Ab);
Ad=edge(Ac,'sobel');
figure(2)
imshow(Ad);
%}

clear all; close all;
I = imread('F:\pic\Ls\a_without_shadow.bmp');
%I = imread('F:\pic\Ls\a_o.jpg');
[m, n, p] = size(I);
k = 6;
[C, label, J] = kmeans(I, k);
I_seg = reshape(C(label, :), m, n, p);
figure
subplot(1, 2, 1), imshow(I, []), title('‘≠Õº')
subplot(1, 2, 2), imshow(uint8(I_seg), []), title('æ€¿‡Õº')
figure
plot(1:length(J), J), xlabel('#iterations')
imwrite(I_seg/255,'F:\pic\Ls\ak.bmp')
