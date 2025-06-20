library(datasets)
#Load Data
data(mtcars)
#View first 5 rows
head(mtcars, 5)
?mtcars
#load library package of ggplot2
library(ggplot2)
#create a Scatter Plot of miles per gallon (mpg) and displacement (disp)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle('displacement vs miles per gallon')+labs(x='displacement',y= ('Milers per Gallon'))
mtcars$vs<-as.character(mtcars$vs)
ggplot(aes(x=vs,y=mpg,fill = vs),data=mtcars)+geom_boxplot(alpha=0.3)+theme(legend.position = 'none')
ggplot(aes(x=wt),data = mtcars)+geom_histogram(binwidth = bw)
mtcars$wt
data.frame(mtcars$wt)
IQR(mtcars$vs)
hist(mtcars$wt, breaks="FD")
bw <- 2 * IQR(mtcars$wt) / length(mtcars$wt)^(1/3)
