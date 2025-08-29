getwd()
setwd("C:\\Users\\IT24103874\\Desktop\\Lab5")
getwd()

Delivery_Times <- read.table("Exercise.txt", header = TRUE)
attach(Delivery_Times)

Histogram <- hist(Delivery_Time_.minutes., main="Delivery times histogram", breaks = seq(20, 70, length=10), right=TRUE)

cum_freq <- cumsum(Histogram$counts)
plot(Histogram$mids, cum_freq, type="o", main = "Cumulative Delivery times polygon", xlab="Times", ylab="Cumulative Frequency", ylim = c(0, max(cum_freq)))
