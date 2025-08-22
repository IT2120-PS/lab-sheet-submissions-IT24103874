#Question 1#
branchdata <- read.table("Exercise.txt", header=TRUE, sep=",") #Extract the text to table#
fix(branchdata) #Make it open separately#
attach(branchdata) #So that u dont gotto do branchdata$column#

#Question 2#
#All variables are numerical, and should use ratio as their scale of measurement.# 

#Question 3#
boxplot(Sales_X1,main="Box plot of sales",outline=TRUE, outpch=8, horizontal=TRUE)

#Question 4#
fivenum(Advertising_X2)
IQR(Advertising_X2) 

#Question 5#
findOutliers <- function(x){
  q1 = quantile(x)[2]
  q3 = quantile(x)[4]
  
  IQR <- q3 - q1
  
  upperB = IQR + q3 * 1.5
  lowerB = IQR - q1 * 1.5
  
  outliers = sort(x[x < lowerB | x > upperB])
  print(outliers)
}

nums <- sample(1:50, size = 10, replace=TRUE)
findOutliers(nums)

print(Years_X3)
findOutliers(Years_X3)