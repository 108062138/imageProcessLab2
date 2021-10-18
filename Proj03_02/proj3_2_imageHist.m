clear;
close all;

disp('initial process!')
%prompt1 = 'Enter image : ';
%imageName = input(prompt1, 's');
%prompt2 = 'Enter c : ';
%c = input(prompt2);
imageName = 'Fig0308(a)(fractured_spine).tif';

%proj3-1
originalImage = imread(imageName); %read
subplot(1,3,1);imshow(originalImage);title('input image');
imwrite(originalImage,'originalImage.jpeg','JPEG');
imageHistRes =  imageHist(originalImage);

disp('finish process!');