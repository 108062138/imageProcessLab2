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
mask = [0 1 0;
        1 -4 1;
        0 1 0];
scale = 3;
disp(mask);

%proj3-1
originalImage = imread(imageName); %read
subplot(1,3,1);imshow(originalImage);title('input image');title('imput image');
imwrite(originalImage,'originalImage.jpeg','JPEG');
[laplacianFilteringRes,scaledLaplacian] =  laplacianFiltering(originalImage,mask,scale);

subplot(1,3,2);imshow(laplacianFilteringRes,[]);title('laplacianFiltering image');
imwrite(laplacianFilteringRes,'laplacianFilteringRes.jpeg','JPEG');

subplot(1,3,3);imshow(scaledLaplacian,[]);title('scaledLaplacian image');
imwrite(scaledLaplacian,'scaledLaplacian.jpeg','JPEG');
disp('finish process!');