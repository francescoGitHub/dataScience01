BMI<-rnorm(n=1000, m=24.2, sd=2.2)

hist(BMI)

histinfo<-hist(BMI)
histinfo

#Number of bins
hist(BMI, breaks=20, main="Breaks=20")
hist(BMI, breaks=5, main="Breaks=5")
hist(BMI, breaks=c(17,20,23,26,29,32), main="Breaks is vector of breakpoints")
# 'x' could not be included in the range (17,32]
# hist(BMI, breaks=c(16,20,23,26,29,33), main="Breaks is vector of breakpoints")
hist(BMI, breaks=seq(17,32,by=3), main="Breaks is vector of breakpoints")

#Frequency vs Density
hist(BMI, freq=FALSE, main="Density plot")

#Plot aesthetics
hist(BMI, freq=FALSE, xlab="Body Mass Index", main="Distribution of Body Mass Index", col="lightgreen", xlim=c(15,35),  ylim=c(0, .20))
curve(dnorm(x, mean=mean(BMI), sd=sd(BMI)), add=TRUE, col="darkblue", lwd=2)