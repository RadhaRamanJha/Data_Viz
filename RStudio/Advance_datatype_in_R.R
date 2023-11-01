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