#Buyer Ratio
#Variables are discrete So chi-square test

a<- read.csv("O:/ExcelR Data Science Assignments/assignment 3/BuyerRatio.csv")
View(a)

b<- a[,-1]     #to remove 1st column
View(b)

#H0->same product sales ratio for  M & F
#Ha->not same product sales ratio for M & F

chisq.test(b)
#p-value = 0.6603 and it is greater than 0.5 therefore failed to reject null hypothesis
#Therefore, Same product sales for M & F 