# 13 Jun 2022
# Basic R

# Working directory
getwd()
setwd("D:/PopEco/Day1") # note / instead of \ in windows

# Use R like a calculator
3+9+12-7 # comment
(3+9+12)-7

12+17/2 -3/4*2.5
(12+17/2) -(3/4*2.5)

(12+17/2 -3/4)*2.5
(12+(17/2 -3/4))*2.5

# takes multiplication and division parts first, then addition and subtraction

pi # the constant pie
sqrt(9) # square root
3^2 # power 2

### Open new script ###
# go to File > Save as

# Storing the results
# The object (ans1) holds the value 
ans1 <- 5+2 
ans1 # one, not lower case L
(ans2 <- ans1 + 3)
ans2

ls( ) #list of object(s)
rm("ans2") # remove object
rm("ans1", "ans2") # remove object
ls()

# Save workspace
# the work space is your current R working environment, includes any user-defined objects
save.image("basic_R_scriptSOy.RData")
q()
load("D:\\PopEco\\Day1\\basic_R_script.RData")

#### Data type (or mode) 
# Vectors = one-dimensional array, where element has the same mode (e.g. numeric, character, logical)

a <- c(1, 2, 5, -2, 4) # c is combine function
a
a[4] 			#index
aa <- a[-4] 	# remove element number 4
aa

b <- c(1, 2, 3)
d <- c(TRUE, TRUE, FALSE)
d+1
b*d

#Matrices = two-dimensional array, where element has the same mode (e.g. numeric, character, logical)
y <- matrix(1:20, nrow=5, ncol=4)
y

y[,4]+1  	#column
y[1,]+1 	#row
y[1,4]+1 	#row 1, column 4
y[1, c(3,4)]
y+1

#Arrays = similar to matrices but >2 dimensions
#mydata <- array(vector, dimensions, dimnames)
#3-dimensions (2,3,4) 
# vector of 1:24
 
dim1 <- c("r1", "r2")
dim2 <- c("c1", "c2", "c3")
dim3 <- c("s1", "s2", "s3", "s4")
mydata <- array(1:24, c(2,3,4), 		#2 rows, 3 columns, 4 arrays
	dimnames=list(dim1, dim2, dim3))
mydata
mydata[,,4]
mydata[,,4]*2

#Data frames = columns can contain different modes of data
# mydata2 <- data.frame(co1, col2, col3,...)
vn <- c(3.4, 5.6, 7.8) #numeric
vc <- c("Poor", "Good", "Excellent") #charecter
vl <- c(TRUE, FALSE, TRUE) #logical
mydata2 <- data.frame(vl, vc, vn)
mydata2
str(mydata2) 
summary(mydata2)
dd <- mydata2$vn
dd
dd+1
mydata2$vn*2

mydata2[2,3] #index Row number 2, at column no.3

#Lists = an ordered collection of objects
#mylist <- list(obj1, obj2,...)
g <- "My list"
h <- c(25, 26, 27, 18)
m <- matrix(1:10, nrow = 5)
j <- c("one", "two", "three")
mylist <-list(title=g, ages=h, m, j)
mylist
mylist[[2]]
mylist[["ages"]]/2
mylist$ages/2
mylist[[2]]*2
mylist[[3]][4,1] 

# Input data to R
Exdata <- read.csv("Example_DataFrame.csv", head=TRUE)
summary(Exdata)

mean(Exdata$Tnight)
mean(Exdata$Tnight, na.rm=TRUE)

# create new dataset without missing data 
newdata <- na.omit(Exdata)
summary(newdata)

# useful functions for woring with data objects
head(newdata, 10) # Lists the first part of the object
tail(newdata) # Lists the last part of the object

dim(newdata) # dimensions of an object
str(newdata) #structure of an object
length(newdata$year) #number of elements
plot(tiger~Tnight, newdata) #iInteger: Numbers that do not contain decimal values
plot(tiger~d2road, newdata)
plot(tiger~factor(habitat), newdata)
table(newdata$tiger, newdata$habitat)

# Factors
# -------
chickwts
str(chickwts)
summary(chickwts)
chickwts$feed  # This is a 'factor' = categorical variable
plot(weight~feed, data=chickwts) 

?boxplot

# Ordered
status <- c("Improved", "Good", "Poor")
class(status)

ast <- factor(status) #alphabetical order
class(ast)
ast

ast2 <- factor(status, levels=c("Poor", 	"Improved", "Good")) 
class(ast2)
ast2

# Packages are collections of R functions, data, and compiled code in a well-defined format
# the directory where packages are stored on your computer is called the library

# Install packages
#chooseCRANmirror()
# 1 install from local file
#https://cran.r-project.org/src/contrib/Archive/AHMbook/
# AHMbook package
# save at today folder
#-----DO not unzip!------#

# 2 use function 
#install.packages("wiqid")
library(wiqid)
#update.packages(wiqid)

.libPaths() # shows you where your library is located
