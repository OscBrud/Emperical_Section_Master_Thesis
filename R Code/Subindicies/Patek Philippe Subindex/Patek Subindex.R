#Loading of Dataset done with import dataset

#Installation of packages

#Loading of packages
library(car)
library(lmtest)
library(sandwich)
library(stargazer)

#Loading of Dataset


#Creation of Standard Regression
watchIndex <- lm(Log_Hammer_Price ~ ., data=Patek_Subindex_Data_Pull)

#Creation of Summary Statistics and Plotting of the Standard Regression
summary(watchIndex)
plot(watchIndex)









#Check VIF Values
vif_values <- vif(watchIndex)
print(vif_values)

#Check for heteroskedasticity via breusch pagan test
bptest(watchIndex)

#Calculation of heteroscedasticity-robust standard errors not needed as BP test passed

