# Manual
---
first you should create a 1080*1080 image with white background. then you draw the curve you want using a black pen. you can do all these using paint. the first release can just handle continuous functions (make sure for every x value there is a y value). save the image as 'test.png'. then run the img2data, It will make a data.mat file out of your graph. then run fitter.

# properties of Fitter 
---
Fitter tests polynomial, Exponential, Fourier and Rational fits (you can change the degrees if you want). then it will print the R^2 for each of these fits. so you can compare them numerically. after that the code displays data of your painting and fits. fourier fit coefficients will be printed, because it is the best fit in the options that I found. 
