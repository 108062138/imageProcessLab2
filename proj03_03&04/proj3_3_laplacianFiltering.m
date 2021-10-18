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

%proj3-1
I = imread(imageName);
originalImage = im2double(I); %read
subplot(1,5,1);imshow(originalImage);title('input image');title('(a) input image');
imwrite(originalImage,'originalImage.jpeg','JPEG');

mask = [0 1 0;
        1 -4 1;
        0 1 0];
scale = 1;
[laplacianFilteringRes,scaledLaplacian] =  laplacianFiltering(originalImage,mask,scale);
subplot(1,5,2);imshow(scaledLaplacian);title('(b) scaledLaplacian image');
imwrite(scaledLaplacian,'scaledLaplacian.jpeg','JPEG');

disp('errrr.');

mask = [0 1 0;
        1 -4 1;
        0 1 0];
scale = -1;
[laplacianFilteringRes,scaledLaplacian] =  laplacianFiltering(originalImage,mask,scale);
subplot(1,5,3);imshow(laplacianFilteringRes);title('(c) c=-1');
imwrite(laplacianFilteringRes,'laplacianFilteringRes.jpeg','JPEG');

mask = [1 1 1;1 -8 1;1 1 1];
scale = -1;
[laplacianFilteringRes,scaledLaplacian] =  laplacianFiltering(originalImage,mask,scale);
subplot(1,5,4);imshow(laplacianFilteringRes);title('(d) -8kernel image');
imwrite(laplacianFilteringRes,'laplacianFilteringRes.jpeg','JPEG');

disp('finish process!');

mask = [0 0 -1 0 0;0 -1 -2 -1 0;-1 -2 16 -2 -1;0 -1 -2 -1 0;0 0 -1 0 0];