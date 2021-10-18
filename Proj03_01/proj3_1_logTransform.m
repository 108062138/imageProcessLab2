clear;
close all;

disp('initial process!')
prompt1 = 'Enter image : ';
imageName = input(prompt1, 's');
prompt2 = 'Enter c : ';
c = input(prompt2);
%imageName = 'Fig0308(a)(fractured_spine).tif';
%c = 10;

%proj3-1
originalImage = imread(imageName); %read
subplot(1,3,1);imshow(originalImage);title('input image');
imwrite(originalImage,'originalImage.jpeg','JPEG');
logTransformRes =  logTransform(originalImage,c);

subplot(1,3,2);imshow(logTransformRes);title('logTransform image');
imwrite(logTransformRes,'logTransform.jpeg','JPEG');

disp('finish process!');