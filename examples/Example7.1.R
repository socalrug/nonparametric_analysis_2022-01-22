rate <- c(6.0, 6.7,4.9,4.4,5.8,4.8,5.5,6.7,4.7,5.6,6.5,6.0,4.7,5.1,7.2,6.1,
7.7,5.7,7.1,4.2,5.8,5.1,6.3,5.1,3.9,4.7,4.4,5.9,4.1,5.8,4.9,5.4,3.9,6.0,4.1,
4.6,5.7,5.0,4.5,6.9,5.6,4.6,4.4,4.1,3.2,6.3,4.2,4.7,4.3,4.3,4.5,6.7,3.9,4.6,
5.8,3.8,5.5,4.7,5.0,4.2,5.0,4.5,3.7,5.5,5.4,2.6,5.0,4.9,5.7,4.3,5.3,7.1,7.5,
4.1,5.1,5.7,4.8,6.1,6.3,4.1,5.7,7.2,6.0,7.2,8.0,8.7,8.5,9.1,7.5,10.5,8.5,7.4,
10.5,8.9,8.5,9.9,8.3,9.9,7.2,9.5,10.5,11.9,11.4,8.0,10.5,11.2,9.2,9.5,10.0,
10.3,9.1,8.1,7.9,9.5,10.7,8.5,9.1,8.7,9.0,8.6)
month <- 1:120

#plotting the data
plot(month, rate)

#fitting linear loess regression with optimal smoothing parameter
library("fANCOVA") 
rate.loess<- loess.as(month, rate, degree=1, criterion="aicc", plot=TRUE)

#displaying optimal smoothing parameter
print(rate.loess$pars$span)

#fitting linear loess regressions with different smoothing parameters
loess.as(month, rate, degree = 1, user.span = 0.05, plot=TRUE)
loess.as(month, rate, degree = 1, user.span = 0.1, plot=TRUE)
loess.as(month, rate, degree = 1, user.span = 0.2, plot=TRUE)
loess.as(month, rate, degree = 1, user.span = 1, plot=TRUE)

#using fitted curve to predict values
loess.fit<- loess.as(month, rate, degree = 1, user.span = 0.1, plot=TRUE)
predict(loess.fit, 10.5)

#fitting quadratic loess regression
rate.loess2<- loess.as(month, rate, degree=2, criterion="aicc", plot=TRUE)

#displaying optimal smoothing parameter
print(rate.loess2$pars$span)

#fitting quadratic loess regressions with different smoothing parameters
loess.as(month, rate, degree=2, user.span=0.1, plot=TRUE)
loess.as(month, rate, degree=2, user.span=0.2, plot=TRUE)
loess.as(month, rate, degree=2, user.span=0.3, plot=TRUE)