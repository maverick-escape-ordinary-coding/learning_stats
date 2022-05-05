install.packages("summarytools")
install.packages("tableone")
install.packages("gtsummary")
install.packages("psych")
install.packages("corrplot")
library(ggplot2)

library(summarytools)
?dfSummary
view(dfSummary(iris))

library(tableone)
?CreateTableOne

names(iris)[-5]
CreateTableOne(vars=names(iris)[-5],
               strata="Species",  
               data=iris,
               test=F)


library(gtsummary)
library(dplyr)
iris %>%  dplyr::group_by(Species) %>%
  tbl_summary()


library(psych)
describeBy(iris[,-5],group=iris[,5])



NYC<-read.csv("data/nyc.csv")

head(NYC)


ggplot(data=NYC)+
  geom_histogram(mapping=aes(x=Price),binwidth = 1)


ggplot(data=NYC,aes(x=Price,y=Service))+
  geom_point()


ggplot(data=NYC,aes(x=Price))+
  geom_boxplot()

view(dfSummary(NYC[,-1]))

library(corrplot)
corrplot(cor(NYC[,-1]))
pairs(NYC[,-1])
