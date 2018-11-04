clc; clear; close all;
origin=imread('F:\pic\ls\gz3.jpg');
origin=rgb2gray(origin);
place=imread('F:\pic\ls\L2sreskk.jpg');
%place=rgb2gray(place);
res=origin;
[y,x]=size(place);
for ctr=1:y
    for itr=1:x
        if origin(ctr, itr) == 255 && place(ctr, itr) == 1
            res(ctr, itr) = 255;
        else
            res(ctr, itr) = 0;
        end
    end
end
 for ctr=1:y
    for itr=1:x
        if place(ctr, itr) == 1 && res(ctr, itr) == 0
            res(ctr, itr) = 0;
        else
            res(ctr, itr) = 255;
        end
    end
 end 
imwrite(res,'F:\pic\ls\gz2mtl.bmp');