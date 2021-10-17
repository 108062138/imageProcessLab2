clear;
close all;

disp('initial process!')
prompt1 = 'Enter image : ';
imageName = input(prompt1, 's');
prompt2 = 'Enter c : ';
c = input(prompt2);
prompt3 = 'Enter r : ';
r = input(prompt3);
%imageName = 'Fig0308(a)(fractured_spine).tif';
%c = 10;
%r = 5;

%proj3-1
originalImage = imread(imageName); %read
subplot(1,3,1);imshow(originalImage);title('input image');
imwrite(originalImage,'originalImage.jpeg','JPEG');
powerlawTransformRes =  powerlawTransform(originalImage,c,r);

subplot(1,3,2);imshow(powerlawTransformRes);title('powerlawTransform image');
imwrite(powerlawTransformRes,'powerlawTransform.jpeg','JPEG');

disp('finish process!');