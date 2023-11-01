## Basic Data Types
x = 12
typeof(x)
# Integer
y <- 10L
typeof(y)
z <- 10 + 5i
typeof(z)
# logical 
a = TRUE
typeof(a)
# Character
c = "Hello"
typeof(c)


## Arithmetic operatons
## Addition 
10+5
# Subtraction
10-5
# Multiplication
10*5
# Power
10^3
# Division
10/2
# Modulo Division
10 %% 3
10 %% 7


# Comparison Operator
# Equality Check
10 == 10
# Not Equal
10 != 10
# Greater than
10 >= 7
# Less Than 
10 < 7

# Logical Operations
# AND 
TRUE & FALSE
# OR
TRUE | FALSE
# NoT
! TRUE
! FALSE

# If condition else if and else condition
x <- 19 
y <- 17
if (x > y){
  print("x is greater than y")
}
print('Done')

if (x > y){
  print('x is greater than y')
}else{
  print('x is smaller than y')
}
print('Done')

if (x>0){
  print('Positive')
}else if (x<0){
  print('Negative')
}else{
  print("zero")
}

# Grade Decider
marks = 76
if (marks>80){
  result = 'Distiction'
}else if (marks>70){
  result = 'First Class'
}else if(marks > 60){
  result = 'Second Class'
}else{
  result = 'Fail'
}
print(result)

# Loops

## a. While loop
i = 0
while(i < 3){
  print('Hello')
  i = i+1
}

## While with break
cnt = 0
while(cnt <= 10){
  print('Hello')
  cnt = cnt+1
  
  if (cnt == 7){
    print("Leaving Loop ... bye bye !")
    break
  }
}

## for Loop - to iterate over a Data Structure
num = c(1,2,3,4)
for (n in num){
  print(n)
}

## for loop with sequence
for (x in 1:5){
  print(x)
}

## Function 
area = function(rad){
  ar = pi*rad^2
  return(ar)
}
area(3)

# Grade Decider
grade = function(marks){
  if (marks>80){
  result = 'Distinction'
}else if (marks>70){
  result = 'First Class'
}else if(marks > 60){
  result = 'Second Class'
}else{
  result = 'Fail'
}
return(result)
}
grade(88)
