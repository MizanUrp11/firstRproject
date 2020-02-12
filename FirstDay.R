#Variables
x <- 10
class(x)

z <- "dhaka"
class(z)

y <- "10"
class(y)

as.numeric(y)
class(y)

#Factor
z <- c("low","High","Medium")
z <- as.factor(z)
z[1]
z[2]
z[3]

#Create Sequence
x <- seq(1,100)
x

y <- seq(from = 0, to = 100, by = 5)
y

#Create date sequence
dates = seq.Date(as.Date("1910/1/1"), as.Date("1910/2/1"),"day")

dates

dates[10]

length(dates)

dates[1:10]

i <- seq(1, length(dates),5)
dates[i]

#Repeat
x1 <- rep("a", 5)
x1

sqrt(1000)

z <- c(1,10,20,30,40,50,60,70)
z+2
z*3

x1 <- c(1,2)
x2 <- c(10,11)
x1 * x2



#How to help
help("seq")
