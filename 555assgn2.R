cip = c(375.62,
        357.94,408.77,
        313.75,391.10,
        233.39,329.25,
        514.82,262.79,
        303.18,360.37,
        181.37,237.13,
        475.15,305.87,
        428.86,429.67,
        295.70,141.91,
        229.06,421.58,
        476.71,531.85,
        245.08,243.87,
        388.62)
a=mean(cip)
a
cinp = c(495.64,365.09,
         497.21,431.37,
         392.18,442.58,
         313.25,142.80,
         321.29,387.23,
         374.03,589.50,
         291.17,324.27,
         579.45,418.78,
         589.29,398.30,
         393.02)
b=mean(cinp)
b

x= b-a
x

d=sd(cip)
d
y=a-1.708*d/sqrt(26)
y

z=a+1.708*d/sqrt(26)
z
t.test()
t.test(cip, cinp, alternative="greater", conf.level=0.95)

t.test(cinp, cip, alternative="greater", conf.level=0.95)

boxplot(cip,cinp)
par(mfrow=c(1,2))
boxplot(cip, main="boxplot for participants")
boxplot(cinp, main="boxplot for non participants")

<Return>

  
par(mfrow=c(1,2))
hist(cip, xlab= "Calorie intake for participants", main="histogram for participants")
hist(cinp, xlab="calorie intake for non-participants", main="histogram for non participants")

length(cip)
length(cinp)
sd(cinp)
sd(cip)
summary(cip)
summary(cinp)
