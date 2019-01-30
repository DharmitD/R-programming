data1 <- read.csv("CS555Ass5Data.csv", header = TRUE)
attach(data1)
a=mean(iq[1:15])
b=mean(iq[31:45])
a-b

c=sd(iq[1:15])
c
d=sd(iq[31:45])
d
c-d


e=sd(age[1:15])
e
f=sd(age[31:45])
f
f-e

aggregate(student$iq, by=list(student$group), summary)

#correct
m<-aov(data1$iq~data1$group, data1=data1)
summary(m)
TukeyHSD(m, conf.level = 0.95)

m1<-aov(data1$iq~data1$age, data=data1)
summary(m1)

pairwise.t.test(iq, group, p.adj='bonferroni') 

# Define Dummy Variables 
data1$g0 <- ifelse(group=='Chemistry student
', 1, 0)
data1$g1 <- ifelse(group=='Math student', 1, 0)
data1$g2 <- ifelse(group=='Physics student', 1, 0)

# Create a multiple linear regression model 
my_linear_regression_model <- lm(iq~age, data=data1)
summary(my_linear_regression_model)

m2<-aov(data1$iq~data1$group, data=data1)
summary(m2)
