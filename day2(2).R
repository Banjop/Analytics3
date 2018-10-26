#plot
women
plot(women)
plot(women,type='b',pch=18,lty=2,col=2)
plot(women, xlim=c(30,100), ylim=c(min(women$weight)-10, 200), pch=10)
data()

#more features with plot
plot(y=women$height, x=women$weight, pch=15, xlab='Weight', ylab='Height', col='red', cex=2, type='b')
title(main='Main Title- PDU', sub='Sub Title')
#see cheat sheet on base graphs

plot(women)
abline(lm(women$weight ~ women$height), col='red', lty=2, lwd=4)
abline(h = c(130, 150), col='green') 
abline(v=c(62, 66, 70), col='blue')
abline(v=women$height, col='purple')


#pie
x = c(10,20,40,50)
pie(x)
xlabels = c('A','B','C','D')
pie(x, labels=xlabels)
pie(x, labels=paste(round(x/sum(x) * 100,0),'%') )
x
#correlation plot
pairs(women)
cor(women$height,women$weight)
 head(mtcars)
cor(mtcars) 
names(mtcars)
pairs(mtcars)
pairs(mtcars[1:4])
options(digits=4)
pairs(mtcars[1:4])


#Advanced Graphs
library(corrgram)
cor(mtcars[1:4])
corrgram(mtcars[1:4], order=TRUE, lower.panel=panel.shade, upper.panel=panel.pie, text.panel=panel.txt,
         main="Car Milage Data in PC2/PC1 Order")
