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

a <- LETTERS[1:10]
b <- seq(1:10)
c <- b * 2
m <- cbind(b,c)
m
class(m)

m[2,]
m[,1]
t(m)



a
b
m <- cbind(a,b,c)
m2 <- cbind(a,b)
m2

d <- data.frame(a = a,b = b, c = c)
d

x <- c(1, "a")
y <- list(1, "a")
y


d
d[1,2:3]

#############################

library(readxl)

#Read File from excel
indir <- "C:\\Users\\mizan\\Documents\\myFirstRproject\\myFirstRproject\\data"

#List files
ff <- list.files(path = indir, pattern = ".xls", full.names = TRUE)


myFunction <- function(i,ff){
  f <- ff[i]
  d <- read_excel(f)
  colnames(d) <- c("First","Second","Third")
  d <- d * 10
  
  outname <- gsub(".xls",".csv",f)
  write.csv(d,outname,row.names = FALSE)
  
  print(d)
}

myFunction(1,ff)
myFunction(2,ff)
myFunction(3,ff)

for (i in 1:3) {
  print(i)
  myFunction(i,ff)
}

##################Spatial Plotting in R########################

url <- "https://data.humdata.org/dataset/0950e7df-b9eb-4fd3-b89c-a749fd8b69a1/resource/b0aa25f3-575d-47e5-8f7c-10d57a2ef2cd/download/bgd_watcrsa_1m_iscgm.zip"
download.file(url,dest = 'bgd_rivers.zip')
unzip('bgd_rivers.zip')
ff <- list.files(path = ".", full.names = TRUE)
rv <- shapefile('bgd_watcrsa_1m_iscgm.shp')
plot(v0, border = "red", lwd = 2, axes = TRUE)
plot(rv, col='blue', add = TRUE)
title(main = "BGD rivers")
legend('bottomright', legend = 'River', lty = 1, lwd = 2, col = 'blue', bty = "n")
