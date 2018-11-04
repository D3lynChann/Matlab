A=imread('F:\pic\Ls\a_without_shadowk.bmp');
imshow(A);

%%
a=double(A(:,:,1))+2^8*double(A(:,:,2))+2^16*double(A(:,:,3));
figure,imshow(a,[])
%%
[y,x] = size(a);
img=a;
[X,Y] = meshgrid(1:x,1:y);         % 生成网格坐标
pp = double(img);                  % uint8 转换为 double 
figure, mesh(X, Y, pp);                    % 画图
colormap gray; 

%%
%figure, imshow(A(:,:,1),[]);
A1=A(:,:,1);
imwrite(A1,'F:\pic\Ls\L1s.bmp');
%figure, mesh(X, Y, double(A(:,:,1)));   
%colormap gray; 

%%
A2=A(:,:,2);
imwrite(A2,'F:\pic\Ls\L2s.bmp');
%figure, imshow(A(:,:,2),[]);
%figure, mesh(X, Y, double(A(:,:,2)));   
%colormap gray; 