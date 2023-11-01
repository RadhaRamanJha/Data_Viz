#dplyr



install.packages("dplyr")
library(dplyr)

## 
install.packages("nycflights13")
library(nycflights13)
dim(flights)
View(flights)

## --------------
filter(flights, month == 1, day == 1)

## ----------
arrange(flights, year, month, day)

## -----------
View(arrange(flights, desc(arr_delay)))
arrange(flights, desc(arr_delay))
## ----------------
# Select columns by name
select(flights, year, month, day)
# Select all columns between year and day (inclusive)
select(flights, year:day)
select(flights, day:arr_time)
# Select all columns except those from year to day (inclusive)
select(flights, -(year:day))


## Create new columns-----------------
flights<-mutate(flights,
  gain = arr_delay - dep_delay,
  gain_per_hour = gain / (air_time / 60)
  
)

## -------------speed = distance / air_time * 60

View(flights)
## ---------------
sample_n(flights, 20)
sample_frac(flights, 0.01)

## ---------------
destinations <- group_by(flights, dest)

summarise(destinations,
  planes = n_distinct(tailnum),
  flights = n()
)

## --------------
# `year` represents the integer 1
select(flights, year)
select(flights, 1)

## ----------------
data()

