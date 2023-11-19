#Loading of Dataset done with import dataset

#Installation of packages

#Loading of packages
library(car)
library(lmtest)
library(sandwich)

#Loading of Dataset


#Creation of Standard Regression
watchIndex <- lm(Log_Hammer_Price ~ ., data=Omega_Data_Pull)

#Creation of Summary Statistics and Plotting of the Standard Regression
summary(watchIndex)
plot(watchIndex)






#Check VIF Values
vif_values <- vif(watchIndex)
print(vif_values)

#Check for heteroskedasticity via breusch pagan test
bptest(watchIndex)

#Calculate heteroscedasticity-robust standard errors
watchIndex_robust_se <- coeftest(watchIndex, vcov = vcovHC)
print(watchIndex_robust_se)
