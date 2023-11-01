#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality <- datasets::airquality
####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

View(airquality)
######Columns
airquality[,c(3,5)]
airquality[,c(1,2)]

# df = datasets::airquality
# df[,c(1,2)]

summary(airquality[,1])
summary(airquality)

mean(airquality$Wind)
mean(airquality$Ozone)
mean(airquality$Ozone,na.rm = TRUE)
summary(airquality$Wind)
summary(airquality[,3])
summary(airquality$Ozone)

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind) 

#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind)
plot(airquality$Temp,airquality$Ozone)
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'Observation no.', 
     ylab = 'Wind values', main = 'Ozone levels in NY city',
     col = 'blue')
# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = F,axes=T)
#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out



# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

mean(airquality$Solar.R)
median(airquality$Ozone, na.rm = T)
mode(airquality$Month)
install.packages("modeest") #package installation
library(modeest) #use the package

mfv(airquality$Month)
install.packages("moments")
library(moments)
kurtosis(airquality$Wind)
skewness(airquality$Wind)
sd(airquality$Ozone,na.rm = T)
var(airquality$Wind)

##Home work
ir<-datasets::iris
mean(ir$Sepal.Length)
View(ir)

#var
#skewness
#kurtosis
#histograms
#boxplots









