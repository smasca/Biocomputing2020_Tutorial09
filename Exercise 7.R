#Task 1: replicating the functionality of the head function in Linux to output the top n lines

setwd ("/Users/samanthamasca/Desktop/Biocomputing")
#variable name of the file
data <- read.table(file='wages.csv',sep=',',header=TRUE,stringsAsFactors = FALSE)
#variable integer for number of lines
n <- 9
#replicated head function via indexing
data[1:n,]

# Task 2: load iris.csv and do the following things

# load iris.csv file
setwd ("/Users/samanthamasca/Desktop/Biocomputing")
iris <- read.table(file='iris.csv',sep=',',header=TRUE,stringsAsFactors = FALSE)

# print the last 2 rows in the last 2 columns to the R terminal
iris[149:150,c(4,5)]

# get the number of observations for each species included in the data set
# number of virginica observations
nrow(iris[iris$Species=="virginica",])
# number of setosa observations
nrow(iris[iris$Species=="setosa",])
# number of versicolor observations
nrow(iris[iris$Species=="versicolor",])

# get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width>3.5,]

# write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa <- iris[iris$Species=="setosa",]
write.table(setosa, "setosa.csv", row.names = FALSE, sep=',')

# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginicaData = iris[iris$Species=="virginica",]
# mean Petal.Length of virginica
mean(virginicaData$Petal.Length)
# minimum Petal.Length of virginica
min(virginicaData$Petal.Length)
# maximum Petal.Length of virginica
max(virginicaData$Petal.Length)