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
originalImage = im2double(originalImage); %read

subplot(1,8,1);imshow(originalImage);title('input');
imwrite(originalImage,'originalImage.jpeg','JPEG');

logTransformRes =  logTransform(originalImage,c);
subplot(1,8,2);imshow(logTransformRes);title("logTransform image");
imwrite(logTransformRes,'logTransform.jpeg','JPEG');

for i = 1:6
    powerlawTransformRes =  powerlawTransform(originalImage,c,r);
    subplot(1,8,i+2);imshow(powerlawTransformRes);title("power "+r);
    imwrite(powerlawTransformRes,'powerlawTransform.jpeg','JPEG');
    r = r * 2;
end
   
disp('finish process!');