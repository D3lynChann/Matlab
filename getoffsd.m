clc; clear; close all;
origin=imread('F:\pic\ls\a.bmp');
origin=double(origin);
place=imread('F:\pic\ls\L1.jpg');
place=rgb2gray(place);
res=origin;
[y,x]=size(place);
for ctr=1:y
    for itr=1:x
        if place(ctr, itr) == 255
            res(ctr, itr) = 255;
        end
    end
end

imwrite(res/255,'F:\pic\ls\without_sd_mtl.bmp');