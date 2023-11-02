## a.Numeric Vector
vec <- c(10,20,30,40) # C stands for combine
vec
typeof(vec)

# Convert into integer vector
vint <- c(10L,20L,30L,40L)
typeof(vint)

# Crearte vector Using assign()
assign('x',c(10.4,6.5,543,3.1,20.9,17.6))
x

# Usding combine to create vector
y <-c(vec,0,vec)
y

# Using a sequence
v2 = 1:9
v2

# using repetition
v3 = rep(vec,times = 3)
v3

# using repetition with each
v4 = rep(vec,each = 3)
v4

# Logical Vectors
lgv1 <- c(TRUE,FALSE,FALSE,TRUE,FALSE)
typeof(lgv1)

# Logical vector on condition
v2 = 1:8
lgv2 <- v2 > 3
lgv2

# Character vector
chv1 <- c('Mary','Hugh','Joe','Chandler','Paul')
typeof(chv1)

tmp <- 1:10
typeof(tmp)
chv2 <- as.character(tmp)
chv2
typeof(chv2)
intv2 = as.integer(chv2)
typeof(intv2)

# Vector Addition
z <- c(1,2,3,4,5)
z * 10
z+10
1/z


# add two vector of equal length
a = c(1,2,3,4)
b = c(10,20,30,40)
a+b

# add two vector of unequal length
d = c(1,2,3,4)
e = c(10,20,30,40,50)
d+e

# length 
length(d)

# maximum
max(d)

# min
min(d)

# mean
mean(d)

# Sum
sum(d)

# Variance
var(d)

# Standard deviation
sqrt(var(d))

# sort
sort(x)

# reverse sort
sort(x, decreasing = TRUE)

# Access Data
x
x[3]
x[2:4]

# Negative value
x[-2]
x[-2:-4]

# Boolean selection 
x[x>6]

# Is NA and is not NA
test <- c(2,-1,NA,8,-9,NA)
is.na(test)
!is.na(test)

# Combination of conditions
test[!is.na(test) & test>0]

# LIST  
fruits <- list('Apple','Orange','Mango','Grapes','Papaya')
typeof(fruits)
lst <- list(name = 'Pat', wife ='Mary', child = 'Dolly', age = 23)
lst
lst$name
lst$child
lst$age

# Conversion of list into vector vice a versa

vec <- c(1,2,3,4)
vlist = list(vec)
typeof(vlist)
newvec = unlist(vlist)
typeof(newvec)
fruits

# Working with list

fruits[3:5]
fruits[[1]]
newvec1 = unlist(lst)
newvec1
typeof(newvec1)

for (X in newvec1){
  print(X)
}

fruits
fruits[6] = 'Kiwi'
fruits
fruits[6] = 'Pine'
fruits

# creation

emp <- data.frame(
  emp_id = c(1:5),
  emp_name = c('tom','Dan','Ryan','Garty',"Pat"),
  salary = c(1000,2300,1400,3700,4300),
  start_date = as.Date(c('2010-01-09','2012-07-14','2011-08-18','2015-03-07','2013-12-30'))
)
emp

# Setting location
setwd('C:\\radha\\Data_visualiztion_files\\RStudio')
udf <- read.csv('Universities.csv')
udf

emp.rnames <- data.frame(
  emp_id = c(1:5),
  emp_name = c('tom','Dan','Ryan','Garty',"Pat"),
  salary = c(1000,2300,1400,3700,4300),
  start_date = as.Date(c('2010-01-09','2012-07-14','2011-08-18','2015-03-07','2013-12-30')),
  row.names = c('E1','E2','E3','E4','E5')
)
emp.rnames

# Examine the Data
str(emp)

print(summary(emp))
names(emp)
rownames(emp)

# head
head(udf,3)

# tail
tail(udf,3)

# Access Columns
emp$emp_id
emp$emp_name
data.frame(emp$emp_name,emp$salary)

emp[1:2]
emp[,1:2]

emp[,c(1,3)]

# Access rows
emp[1:2,]

emp[c(1,3),]
# can also be accessed by row name
# emp['E1',1] -- check

## Filter records based on condition
emp[emp$emp_name == 'Ryan',]

emp[emp$emp_name %in% c('Ryan','Dan','Pat')]

udf[udf$Expenses > 40000 & udf$SAT > 1000,]

# Add Column to DataFrame
emp$dept = c('IT','Sales','Sales','HR','IT')
emp


emp2 <- data.frame(
  emp_id = c(6:8),
  emp_name = c('Harry','Charles','William'),
  salary = c(1000,2300,1400),
  start_date = as.Date(c('2010-01-09','2012-07-14','2011-08-18')),
  dept= c('Sales','Operations','Operations')
)
emp.new = rbind(emp,emp2)
emp.new

# Change column name
colnames(emp)
colnames(emp)[2]<-'ename'
emp

# Change Entry
emp$ename[emp$ename == 'Ryan'] <- 'Brayn'
emp

### Drop Columns and rows
mydf = head(udf,10)
mydf

# Dropping rows

mydf[-4,]
mydf[-c(2,5,6),]
mydf[-(2:6),]


# Delete using row name
# row.names(emp.rnames)


# Delete Columns
mydf[-4]
mydf[-c(2,5,6)]
mydf[-(2:6)]
colnames(udf)
udf[!(colnames(udf)%in% c('SAT'))]
udf[!(colnames(udf)%in% c('SAT'))]

