mydata <- read.csv("CS555ass6_data.csv", header = TRUE)
attach(data)

#1. dichotomizing temp level as 0 if <98. and 1 if >98.6
mydata$temp_level <- ifelse(mydata$temp>=98.6, 1, 0)
length(which(mydata$sex=="1" & mydata$temp_level=="1"))
length(which(mydata$sex=="2" & mydata$temp_level=="1"))

prop.test(c(19,44),c(65,65),conf.level = 0.5,correct = FALSE)


riskdiff = (0.6769231-0.2923077)*100
riskdiff

#2
prop.test(c(19,44),c(65,65),conf.level = 0.5,correct = FALSE)

#3
#used online calculator


#z = (0.6769231-0.2923077)/()


#4

mydata$sexDummy <- ifelse(mydata$sex=="2", 1, 0)
M<-glm(mydata$temp_level~mydata$sexDummy,family = binomial)
summary(M)

#5
exp(cbind(OR = coef(M), confint.default(M)))

#6
install.packages("pROC")
library(pROC)
g <- roc(mydata$temp_level~mydata$sexDummy)
g
plot(g)
version

#7
M2 <-glm(mydata$temp_level~mydata$sexDummy+mydata$heartRate,family = binomial)
summary(M2)

#8

exp(M2$coefficients[3]*10)

exp(M2$coefficients[2]*10)

#9
g1<-roc(mydata$temp_level~mydata$sexDummy+mydata$heartRate)
g1

#to plot m2
mydata$plot2 <- predict(M2, type=c("response"))
 g2 <- roc(mydata$temp_level ~ mydata$plot2)
 plot(g2)
 auc(g2)
 
 
 #adjusting axis
 plot(1- g$specificities, g$sensitivities, type="l", xlab="1-Specificity", ylab="Sensitivity", main="ROC Curve")
 abline(a=0, b=1)
 grid()
 
 
 plot(1- g2$specificities, g2$sensitivities, type="l", xlab="1-Specificity", ylab="Sensitivity", main="ROC Curve")
 abline(a=0, b=1)
 grid()

 #ignore 
 install.packages("aod")
library(aod)
 wald.test(b=coef(M2), Sigma = vcov(M2), Terms = 2:3)

