#Customer + Order Form

c<- read.csv("O:/ExcelR Data Science Assignments/assignment 3/Costomer+OrderForm.csv")
View(c)

#converting the data into 0 & 1 format
c$Phillippines<-ifelse(c$Phillippines=="Error Free",1,0)
c$Indonesia<-ifelse(c$Indonesia=="Error Free",1,0)
c$Malta<-ifelse(c$Malta=="Error Free",1,0)
c$India<-ifelse(c$India=="Error Free",1,0)

stacked_c<- stack(c)   #stacking the data
View(stacked_c)

table(stacked_c$values,stacked_c$ind)    #forming a table to measure 0 & 1 count

#Ho-> No action, Defective % does not varies by centre
#Ha-> Take action, Defective % varies by centre

chisq.test(table(stacked_c$values, stacked_c$ind))
#X-squared = 3.859, df = 3, p-value = 0.2771
#p-value is greater than 0.05
#Therefore, No action, Defective % does not varies by  centre.

