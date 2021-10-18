clear;
close all;

disp('initial process!')


prompt1 = 'Enter image : ';
imageName = input(prompt1, 's');
prompt2 = 'Enter laplacian matrix: ';
mask = input(prompt2);
prompt3 = 'Enter scale : ';
scale = input(prompt3);
%imageName = 'Fig0308(a)(fractured_spine).tif';

%proj3-3

I = imread(imageName);
originalImage = im2double(I); %read

%originalImage = imread(imageName); %read
subplot(1,5,1);imshow(originalImage);title('input image');
imwrite(originalImage,'originalImage.jpeg','JPEG');

[laplacianFilteringRes,scaledLaplacian] =  laplacianFiltering(originalImage,mask,scale);

subplot(1,5,2);imshow(laplacianFilteringRes,[]);title('laplacianFiltering image');
imwrite(laplacianFilteringRes,'laplacianFilteringRes.jpeg','JPEG');

subplot(1,5,3);imshow(scaledLaplacian,[]);title('scaledLaplacian image');
imwrite(scaledLaplacian,'scaledLaplacian.jpeg','JPEG');

disp('finish process!');