img = imread('testimage.jpg');
[r,c] = size(img);
rr = r/3;

B = img(1:rr,:);
G = img((rr+1):(2*rr),:);
R = img((2*rr+1):r,:);

r = align(G,R);
b = align(G,B);
ColorImg_aligned = cat(3,r,G,b);
imshow(ColorImg_aligned);
