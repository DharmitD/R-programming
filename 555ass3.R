fish <- read.csv("CS555_assgn3_data.csv", header = TRUE)
attach(fish)

plot(NumFishMeals, TotalMercury, main="Scatterplot of number of meals eaten that contain fish (per week) vs. Mercury levels", xlab="number of meals eaten that contain fish (per week)", ylab="Mercury levels", 
     xlim=c(0,40), ylim=c(0,40), pch=1, col="red", cex.lab=1.5)

cor(NumFishMeals, TotalMercury)

cor(TotalMercury, NumFishMeals)


my.model<-lm(fish$TotalMercury~fish$NumFishMeals)
print(my.model)

?abline()
abline(my.model, lty=3, col="blue")

confint(my.model, level = .90)
summary(my.model)
ccdfitted(my.model)
resid(my.model)
anova(my.model)

qf(.90,df1=1,df2=98)

?resid()
//least square regeression equation
xbar <- mean(NumFishMeals)
 sx <- sd(NumFishMeals)
 ybar <- mean(TotalMercury)
 sy <- sd(TotalMercury)
 r <- cor(NumFishMeals, TotalMercury)
 beta1 <- r*sy/sx
 beta1
 beta0 <- ybar - beta1*xbar
 beta0
