#Question 1#

data <- read.table("data_lab08.txt", header=TRUE)

popmn<- mean(data$weight)
popsd<- sd(data$weight)

cat("The population mean is", popmn, "\n")
cat("The population standard deviation is", popsd, "\n")

#Question 2#

sampleSet <- c()
n <- c()
for (i in 1:25){
  s<- sample(data$weight, 6, replace = TRUE)
  sampleSet <- cbind(sampleSet, s)
  n <- c(n, paste('S', i))
}
colnames(sampleSet) = n

s.means<- apply(sampleSet, 2, mean)
s.sds<- apply(sampleSet, 2, sd)

print(s.means)
print(s.sds)

#Question 3#

sampleSetMean<-mean(s.means)
sampleSetSd<-sd(s.sd)

cat("The average sample mean is", sampleSetMean, "\n")
cat("The average sample standard deviation is", sampleSetSd, "\n")
cat("The population mean is", popmn, "\n")
cat("The population standard deviation is", popsd, "\n")
