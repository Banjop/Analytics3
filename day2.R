library(dplyr)
mtcars
str(mtcars)
dim(mtcars)
names(mtcars)
rownames(mtcars)
summary(mtcars)


#summary activities
table(mtcars$am)
t1=table(mtcars$am)
pie(t1)
19/32*360
pie(t1,labels=c('Auto','Mannual'))

#gears
table(mtcars$gear)
t2=table(mtcars$gear)
pie(t2)
19/32*360

pie(t2,labels=c('Three','Four','Five'))
barplot(t2,col=1:3)
barplot(t2,col=1:3,horiz = T)
barplot(t2,col=c('Green','Blue','Yellow'),xtab='Gears',ytab='no. of cars',ylim=c(0,20))

title(main='Distribution of gear cars',sub='no of Gears')
mtcars %>% select(mpg,gear) %>% slice(c(1:5,10))
mtcars %>% arrange(mpg)
mtcars %>% arrange(am, desc(mpg)) %>% select(am,mpg) 
mtcars %>% mutate(rn=rownames(mtcars)) %>% select(rn,mpg) #display rownames with mpg
mtcars %>% slice(c(1:5,7))
mtcars %>% sample_n(3)
mtcars %>% sample_frac(.2)
?slice


#Type of Tx,mean(mpg)                 
mtcars %>% group_by(am) %>% summarise(meanMPG= mean(mpg))
mtcars %>% group_by(am) %>% summarise(meanMPG= mean(mpg),MaxHP=max(hp),MinWt=min(wt))
mtcars %>% group_by(gear,cyl) %>% summarise(MeanMPG=mean(mpg),Maxhp=max(hp),MinWT=min(wt))

?dir
dir(./C:\R)
list.files()
file.exists()