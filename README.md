# CIFAR-10-Classification
Object classification using the CIFAR-10 Dataset

# Introduction
The CIFAR-10 dataset consists of 60000 32x32 colour images in 10 classes, with 6000 images per class. There are 50000 training images and 10000 test images.

![alt tag](https://github.com/My-Machine-Learning-Projects/CIFAR-10-Classification/blob/master/CIFAR-10%20Classes.JPG)

# Overwiew of My Approach
First, I extracted the images categoy-wise. This was done using the data_processing.m and image_generation.m files. Please refer to them for a detailed explanation.

Other files:
GUI.m is the GUI for demonstration.
train_and_test.m is the code for training the categoryClassifier (SVM with Gaussian Kernel) using SURF+BoW features, and testing using the test dataset and test images from Google.

categoryClassifier.mat is the classification model.
The \*.mat files are the categorized training sets extracted from the original data_batch\_\* files of the CIFAR 10 dataset.
The \*\_test.mat files are the categorized test sets generated from the test_batch.mat file of the CIFAR 10 dataset. 

The model achieved 93% accuracy on the training set (can be verified from confMatrix.mat) and around 41.5% accuracy on the test set (can be verified from confMatrix_test.mat). Although the test set accuracy isn't so high, it performs well on test images from Google.
