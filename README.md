# CIFAR-10-Classification
Object classification using the CIFAR-10 Dataset

## Introduction
The CIFAR-10 dataset consists of 60000 32x32 colour images in 10 classes, with 6000 images per class. There are 50000 training images and 10000 test images.

![alt tag](https://github.com/My-Machine-Learning-Projects/CIFAR-10-Classification/blob/master/CIFAR-10%20Classes.JPG)

## Overwiew of My Approach
First, I extracted the images category-wise. This was done using the data_processing.m and image_generation.m files. Please refer to them for a detailed explanation.<br/>data_processing.m generates the following files:<br/>
\*.mat files: categorized training sets extracted from the original data_batch\_\* files of the CIFAR 10 dataset.<br/>
\*\_test.mat files: categorized test sets generated from the test_batch.mat file of the CIFAR 10 dataset. <br/>
Use image_generation.m to generate images from these .mat files.

Other files:<br/>
GUI.m generates the GUI (GUI.fig) for demonstration.<br/>
train_and_test.m is the code for training the categoryClassifier (SVM with Gaussian Kernel) using SURF+BoW features, and testing using the test dataset and test images from Google. It can be used to generate categoryClassifier.mat, which is required for the GUI.m file to work. I wasn't able to upload this file beause it exceeds the 25MB limit.<br/>

The model achieved 93% accuracy on the training set (can be verified from confMatrix.mat) and around 41.5% accuracy on the test set (can be verified from confMatrix_test.mat). Although the test set accuracy isn't so high, it performs well on test images from Google.

## Note
Not very accurate on bird, deer and horse categories. I will try to improve the accuracy by extracting different features.
