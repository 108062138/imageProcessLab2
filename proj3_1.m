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
subplot(1,7,1);imshow(originalImage);title('input');
imwrite(originalImage,'originalImage.jpeg','JPEG');

logTransformRes =  logTransform(originalImage,c);
subplot(1,7,2);imshow(logTransformRes);title("logTransform image");
imwrite(logTransformRes,'logTransform.jpeg','JPEG');

for i = 1:5
    powerlawTransformRes =  powerlawTransform(originalImage,c,r);
    subplot(1,7,i+2);imshow(powerlawTransformRes);title("power "+r);
    imwrite(powerlawTransformRes,'powerlawTransform.jpeg','JPEG');
    r = r * 2;
end
   
disp('finish process!');