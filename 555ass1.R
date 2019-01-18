x = read.csv("555assgn1.csv", header = TRUE)
A=x[['X17']]
mean(A)
min(A)
mean(A)
median(A)
sd(A)
quantile(A)
max(A)
boxplot(A, ylab = "duration of days of hospital stays", main = "boxplot of the duration of days of hospital stays.")
hist(A,xlab = "duration of days of hospital stays", main = " histogram of the duration of days of hospital stays.", breaks=26)
quantiles=quantile(A)
q1=quantiles[2]
q1
q3=quantiles[4]
q3
IQR=q3-q1
IQR
l=q1-1.5*IQR
l
m=q3+1.5*IQR
m

which(A>m | A<l)


max(A)
pnorm(7, mean=6, sd=3)

