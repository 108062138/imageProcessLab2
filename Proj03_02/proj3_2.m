clear;
close all;

disp('initial process!')
prompt1 = 'Enter image : ';
imageName = input(prompt1, 's');
%prompt2 = 'Enter c : ';
%c = input(prompt2);
%imageName = 'Fig0308(a)(fractured_spine).tif';

%proj3-2
originalImage = imread(imageName); %read
subplot(1,5,1);imshow(originalImage);title('input image');
imwrite(originalImage,'originalImage.jpeg','JPEG');
[histEqualizationRes,T] =  histEqualization(originalImage);
subplot(1,5,2);imshow(histEqualizationRes,[]);title('histEqualizationRes image');
imwrite(histEqualizationRes,'histEqualizationRes.jpeg','JPEG');
subplot(1,5,3);stairs(T);title('hist trans fnc');
oldHistVector =  imageHist(originalImage);
subplot(1,5,4);plot(oldHistVector);title('histogram before his.');
newHistVector =  imageHist(histEqualizationRes);
subplot(1,5,5);plot(newHistVector);title('histogram after his.');
disp('finish process!');