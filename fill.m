A=imread('F:\pic\Ls\L1.jpg');
%A=rgb2gray(A);
Ad=imfill(A,'holes');
imshow(Ad);