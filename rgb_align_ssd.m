img = imread('testimage.jpg');
[r,c] = size(img);
rr = r/3;

B = img(1:rr,:);
G = img((rr+1):(2*rr),:);
R = img((2*rr+1):r,:);

ref_img_region = G;
[rg,cg] = size(ref_img_region);
ref_img_region = ref_img_region(ceil((rg-50)/2) :ceil((rg-50)/2) + 50,ceil((cg-50)/2) :ceil((cg-50)/2) + 50);
ref_img_region = double(ref_img_region);

r = align(G,R);
b = align(G,B);
ColorImg_aligned = cat(3,r,G,b);
imshow(ColorImg_aligned);
