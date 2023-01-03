# MechaCar_Statistical_Analysis

## Overview of the Project
<p align="justify">The purpose of this project was to perform multiple linear regression analysis, collect summary statistics, and run t-tests in order to review the data of AutosRus´ newest prototype: The MechaCar. The objective is to give more insight to the manufacturing team to improve their progress.</p> 
<p align="justify">Also, at the end of the analysis there is a design study made to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.</p>

<p align="justify">The analysis was made using R.</p>


## Linear Regression to Predict MPG

In this analysis the data was imported from a csv file and then it was read as a data frame. After that, the function lm() was used to perform linear regression in all the variables of the data. The purpose of using the lm() function was to predict the miles per gallon (mpg) of MechaCar prototypes.
Below two images display the output from the linear regression

<img width="471" alt="1" src="https://user-images.githubusercontent.com/111388644/210286192-f658781a-4967-4742-ac83-3369cb8adcfd.png">


<img width="495" alt="234" src="https://user-images.githubusercontent.com/111388644/210286167-603fbc2b-34ee-4046-b963-655a002e1f44.png">

•	The variables that provided a non-random amount of variance to the mpg values were the spoiler angle and the AWD since their p-value was: 0.31 and 0.19 respectively. In other words, these two variables have a p-value higher than 0.05, which was used as the significance value. 

•	The slope of the linear model is not zero because the p-value obtained in the analysis was 5.35 x 10-6 , which is smaller than the level of significance of 0.05%. Therefore, the slope is not zero and the null hypothesis is rejected. 

•	This linear model predicts mpg of MechaCar effectively because the r-squared value is 0.71. This means that there is a 71% of almost no variance between the variables. Although this could explain that the linear model is effectively, a lot of statisticians explain that the best way to know if a linear regression model can predict accurately is by using the root mean squared error of prediction. 


## Summary Statistics on Suspension Coils

For the analysis if the Suspension Coils the mean, median, variance and standard deviation was calculated using the summarize function.

<img width="661" alt="4 2" src="https://user-images.githubusercontent.com/111388644/210286204-b1186e0d-9caf-4877-84e3-facbc234d9f8.png">

Below there is an image that shows the *total_summary* table

<img width="223" alt="4" src="https://user-images.githubusercontent.com/111388644/210286213-706acd44-29e6-4758-bf6f-92439282f094.png">


After that, a table named *lot_summary* was created to display the manufacturing lot by the mean, median, variance and standard deviation of the suspension coil´s PSI column.

<img width="226" alt="4 3" src="https://user-images.githubusercontent.com/111388644/210286222-313436cc-e17d-4e95-abaf-543ed8236ef5.png">

Below there is an image that shows the *lot_summary* table

<img width="346" alt="4 1" src="https://user-images.githubusercontent.com/111388644/210286226-b6b53bad-ba15-4828-ba16-7244ae5a351a.png">

•	Because the design specifications dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI), the current manufacturing data meets this requirement since the variance has a value of 62.29 pounds per square inch. In the other hand, only one of the lots (*Lot3*) does not meet this design specifications, since the variance is equal to 170.29 pounds per square inch. The other two lots (*Lot1* and *Lot2*) have variances that are smaller than 100. 


## T-Test on Suspension Coils
For this part of the analysis, it was necessary to determine if the PSI across all manufacturing lots was statistically different from the population mean of 1500 pounds per square inch. This was done using the *t.test()* function as shown below.

<img width="276" alt="5" src="https://user-images.githubusercontent.com/111388644/210286233-0babb863-74f1-4ff5-831a-bd3552191bb6.png">

When running the code, the result was the following:

<img width="340" alt="6" src="https://user-images.githubusercontent.com/111388644/210286243-1b335b82-15e5-4d92-8572-b50a6e568074.png">

The image above shows that the mean has a value of 1498.78, which is not statistically different from the population mean of 1500 pounds per square inch.


Then, using the *t.test()* and the *subset()* functions the statistical difference from PSI for each lot compared to the population mean of 1500 pounds per square inch was calculated. 

<img width="415" alt="7" src="https://user-images.githubusercontent.com/111388644/210286250-f75fdf49-2b7a-45eb-a34f-716800081ab2.png">

The results of each lot are the following:

Lot1

<img width="377" alt="8" src="https://user-images.githubusercontent.com/111388644/210286257-d90c3317-d630-4183-bf9d-e964c708bd8e.png">


Lot2

<img width="427" alt="9" src="https://user-images.githubusercontent.com/111388644/210286263-2cdd5c48-8110-40e3-8f4b-a762d67397ac.png">


Lot 3

<img width="424" alt="10" src="https://user-images.githubusercontent.com/111388644/210286279-b186a547-2c8b-4194-81be-5625de13970e.png">


With these results it can be concluded that there is not a statistical difference in each lot PSI from the population mean of 1500 PSI.


## Study Design: MechaCar vs Competition
The statistical study that could be performed in order to bring insight to the consumers by comparing the MechaCars against the competition would be using the analysis of variance test (ANOVA).
•	In this study the independent variable would be the types of vehicle brands (the MechaCar vs competition). The dependent variable would be the miles per gallon. 

•	Ho: There is a statistical difference in miles per gallon in vehicles with the same horsepower based on its brand. 

•	The statistical test that would be used is ANOVA.

•	The dataset must include the miles per gallon and the horsepower of each type of brand. The data would be obtained from the mpg consumed in the state of New York, using the highway from a point A to a point B. 
