% Developed by Vikram Bajaj
% concatenating all the data batches i.e. data_batch_1.mat,
% data_batch_2.mat,...,data_batch_5.mat
d = dir('E:\CIFAR-10\cifar-10-matlab\cifar-10-batches-mat');
cd 'E:\CIFAR-10\cifar-10-matlab\cifar-10-batches-mat';
% we have to concatenate d(4), d(5),...,d(8) i.e. the 5 data_batch files
training_dataset=[];
training_labelset=[];
for i=4:8
    load(d(i).name);
    data=data;
    training_dataset = [training_dataset; data]; % dataset stores the concatenated data batches
    labels=labels;
    training_labelset = [training_labelset; labels]; % labelset stores the corresponding concatenated labels
    clear 'data';
    clear 'labels';
end
% load test_batch.mat i.e. d(10).name and save the data and labels
load(d(10).name);
test_dataset = data;
test_labelset = labels;
combined_test_dataset = [labels data];
cd ..;
cd ..;
combined_training_dataset = [training_labelset training_dataset]; % labels+pixel information

% Now, generate category-wise .mat files to save images in corresponding training folders
airplane = combined_training_dataset(combined_training_dataset(:,1)==0,2:end); % selecting image pixel data for rows having 0 as the first column entry (i.e. airplane)
automobile = combined_training_dataset(combined_training_dataset(:,1)==1,2:end); % selecting image pixel data for rows having 1 as the first column entry (i.e. automobile)
bird = combined_training_dataset(combined_training_dataset(:,1)==2,2:end); % selecting image pixel data for rows having 2 as the first column entry (i.e. bird)
cat_dataset = combined_training_dataset(combined_training_dataset(:,1)==3,2:end); % selecting image pixel data for rows having 3 as the first column entry (i.e. cat)
deer = combined_training_dataset(combined_training_dataset(:,1)==4,2:end); % selecting image pixel data for rows having 4 as the first column entry (i.e. deer)
dog = combined_training_dataset(combined_training_dataset(:,1)==5,2:end); % selecting image pixel data for rows having 5 as the first column entry (i.e. dog)
frog = combined_training_dataset(combined_training_dataset(:,1)==6,2:end); % selecting image pixel data for rows having 6 as the first column entry (i.e. frog)
horse = combined_training_dataset(combined_training_dataset(:,1)==7,2:end); % selecting image pixel data for rows having 7 as the first column entry (i.e. horse)
ship = combined_training_dataset(combined_training_dataset(:,1)==8,2:end); % selecting image pixel data for rows having 8 as the first column entry (i.e. ship)
truck = combined_training_dataset(combined_training_dataset(:,1)==9,2:end); % selecting image pixel data for rows having 9 as the first column entry (i.e. truck)

% Now, generate category-wise .mat files to save images in corresponding test folders
airplane_test = combined_test_dataset(combined_test_dataset(:,1)==0,2:end); % selecting image pixel data for rows having 0 as the first column entry (i.e. airplane)
automobile_test = combined_test_dataset(combined_test_dataset(:,1)==1,2:end); % selecting image pixel data for rows having 1 as the first column entry (i.e. automobile)
bird_test = combined_test_dataset(combined_test_dataset(:,1)==2,2:end); % selecting image pixel data for rows having 2 as the first column entry (i.e. bird)
cat_test = combined_test_dataset(combined_test_dataset(:,1)==3,2:end); % selecting image pixel data for rows having 3 as the first column entry (i.e. cat)
deer_test = combined_test_dataset(combined_test_dataset(:,1)==4,2:end); % selecting image pixel data for rows having 4 as the first column entry (i.e. deer)
dog_test = combined_test_dataset(combined_test_dataset(:,1)==5,2:end); % selecting image pixel data for rows having 5 as the first column entry (i.e. dog)
frog_test = combined_test_dataset(combined_test_dataset(:,1)==6,2:end); % selecting image pixel data for rows having 6 as the first column entry (i.e. frog)
horse_test = combined_test_dataset(combined_test_dataset(:,1)==7,2:end); % selecting image pixel data for rows having 7 as the first column entry (i.e. horse)
ship_test = combined_test_dataset(combined_test_dataset(:,1)==8,2:end); % selecting image pixel data for rows having 8 as the first column entry (i.e. ship)
truck_test = combined_test_dataset(combined_test_dataset(:,1)==9,2:end); % selecting image pixel data for rows having 9 as the first column entry (i.e. truck)