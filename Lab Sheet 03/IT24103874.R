setwd("C:\\Users\\User\\Downloads\\IT24103874")
getwd()

student_data<-read.csv("Exercise.csv")

#2.summary statistics and histogram for "X1"(Age).
summary(student_data$X1)
hist(student_data$X1,
     main = "Histogram of Age (X1)",
     xlab = "Age",
     col = "skyblue",
     border = "black")

#3. Bar chart and requency table for X2 (Gender)
gender_freq <- table(student_data$X2)
print(gender_freq)

#Bar chart
barplot(table(student_data$X2),
        main = "Gender Distribution (X2)",
        xlab = "Gender",
        ylab = "Frequency",
        col = c("pink","green"))

# 4.Analize Age (X1) by Accommadation (X3)
#Boxplot for age according to accommadation type
boxplot(X1 ~ X3, data = student_data,
        main = "Age Distribution by Accommadation Type",
        xlab = "Accommadation Type",
        ylab = "Age",
        col = c("green","red","blue"))
