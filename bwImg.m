A=imread('F:\pic\Ls\L2r.bmp');
B=imread('F:\pic\Ls\kmeansTergemp.bmp')
%A=rgb2gray(A);
thres=graythresh(A);
Ab=im2bw(A,thres);
imwrite(Ab,'F:\pic\Ls\L2sasd.bmp')
figure(1)
imshow(Ab);