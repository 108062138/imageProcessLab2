clear;
close all;

disp('initial process!')
%prompt1 = 'Enter image : ';
%imageName = input(prompt1, 's');
%prompt2 = 'Enter c : ';
%c = input(prompt2);
%prompt3 = 'Enter r : ';
%r = input(prompt3);
imageName = 'Fig0338(a)(blurry_moon).tif';
mask = zeros(3,3);
tao = 1;
L = 3;
centerI = (L+1)/2;
centerJ = centerI;
mother = 2 * tao * tao;
k = 2*pi*tao*tao;
for i = 1:L
    for j = 1:L
        s = i - centerI;
        t = j - centerJ;
        mask(i,j) = 2/k*exp(-(s*s+t*t)/mother);
    end
end
disp(mask);

%proj3-1
originalImage = imread(imageName); %read
subplot(1,3,1);imshow(originalImage);title('input image');title('imput image');
imwrite(originalImage,'originalImage.jpeg','JPEG');
spatialFilteringRes =  spatialFiltering(originalImage,mask);
subplot(1,3,2);imshow(spatialFilteringRes,[]);title('spatialFilteringRes image');
imwrite(spatialFilteringRes,'spatialFilteringRes.jpeg','JPEG');
disp('finish process!');