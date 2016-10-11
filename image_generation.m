% Developed by Vikram Bajaj
load('truck_test.mat');
a=truck_test;
for i=1:1000 % number of images in each truckegory
    i
    R = a(i,1:1024);
    R = reshape(R,[32,32]);
    R = R';
    G = a(i,1025:2048);
    G = reshape(G,[32,32]);
    G = G';
    B = a(i,2049:end);
    B = reshape(B,[32,32]);
    B = B';
    rgbImage = cat(3, R,G,B); % cat.mat was renamed to cat_dataset.mat because this function has the same name
    filename = sprintf('E:\\CIFAR-10\\Categorized Test Set\\truck\\%d.jpg',i);
    imwrite(rgbImage,filename);
    clear 'R';
    clear 'G';
    clear 'B';
    clear 'rgbImage';
end
    clear all;
    clc;