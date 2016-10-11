% Developed by Vikram Bajaj
%% Training using all 5000 images in each category
trainingSets = imageSet('E:\CIFAR-10\Generated Dataset\','recursive');
bag = bagOfFeatures(trainingSets);
% Training the classifier with SVM using Gaussian Kernel
mySVM = templateSVM('KernelFunction', 'gaussian');
categoryClassifier = trainImageCategoryClassifier(trainingSets, bag, 'LearnerOptions', mySVM);
% Evaluating performance on TrainingSet
confMatrix = evaluate(categoryClassifier, trainingSets);

%% Testing using all 1000 images in each test set category
testSets = imageSet('E:\CIFAR-10\Categorized Test Set\','recursive');
% Evaluating performance on TrainingSet
confMatrix_test = evaluate(categoryClassifier, testSets);

%% Testing on Google images
img = imread('dog_Google.jpg');
[labelIdx, scores] = predict(categoryClassifier, img);
label_names = {'Airplane','Automobile','Bird','Cat','Deer','Dog','Frog','Horse','Ship','Truck'};
label_names{labelIdx}
