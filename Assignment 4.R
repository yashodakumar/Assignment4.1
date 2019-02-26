df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))

install.packages("dplyr")
library(dplyr)
#Question No. 1
#Return only the rows in which the left table have match.
inner_join(df1,df2)

#Question No. 2
#Returns all rows from both tables, join records from the left which have matching keys in the right table.
full_join(df1,df2)

#Question No. 3
#Return all rows from the left table, and any rows with matching keys from the right table.
left_join(df1,df2)

#Question No. 4
#Return all rows from the right table, and any rows with matching keys from the left table.
right_join(df1,df2)


#another method
merge(df1, df2, all=FALSE)

merge(df1,df2,all=T)

merge(df1, df2, by.x="CustId", all.x = T)

merge(df1, df2, by.x="CustId", all.y = T)

#Assignment 4.1 Question 5
#Return a long format of the datasets without matching key.
merge(df1, df2, by=NULL)

#Keep only observations in df1 that match in df2.
semi_join(df1,df2)

#Drop all observations in df1 that match in df2
anti_join(df1,df2)
