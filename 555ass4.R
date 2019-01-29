data <- read.csv("CS555_assgn4_data.csv", header = TRUE)
attach(data)
cor(Education,Score)
cor(Score,Income)

my.model<-lm(data$Score~data$Education)
print(my.model)
anova(my.model)
resid(my.model)
cooks.dist <-cooks.distance(model)
which(cooks.dist > (4/98))


Education = Education/10;
Score=Score/10
#residual plot
plot(Education, resid(model), axes=TRUE, frame.plot=TRUE, xlab='Education', ylab='residue')

#fitted v/s residual
plot(fitted(model), resid(model), axes=TRUE, frame.plot=TRUE, xlab='fitted values',
       ylab='residue')
abline(0 ,0)

plot(Education, Score, 
     xlim=c(0,20), ylim=c(0,120), pch=1, col="red", cex.lab=1.5)

hist(resid(model))
19210/(19210+10201)

#slope and intercept
model = lm(formula = Score~Education+Income+WorkforceWomen)
print(model)
summary(model)
anova(model)



qf(0.95, df1=3, df2 = 98) 

totalss <- sum((Score - mean(Score))^2)
print(totalss)
# Regression and Residual Sum of the Squered. 
# Regression and Residual Sum of the Squered.
regss <- sum((fitted(model) - mean(Score))^2)
resiss <- sum((Score-fitted(model))^2)
# Calulate the F Value. 
# Calulate the F Value.
fstatistic <- (regss/2)/(resiss/97)
print(fstatistic)
