A=imread('F:\pic\Ls\ak.bmp');
A=rgb2gray(A);
thres=graythresh(A);
Ab=im2bw(A,0.500000000000000);
imwrite(Ab,'F:\pic\Ls\L2sres.bmp')
figure(1)
imshow(Ab);
Ac=double(Ab);
Ad=edge(Ac,'sobel');
figure(2)
imshow(Ad);