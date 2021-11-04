
## Alice Burchett, Exercise 07 

# 1. Replicate head functionality and print top n lines of file

fileName<-"iris.csv" # insert any file name here. Note, must be "," separated. 
nlines<-3 # Insert desired number of lines here

file<-read.table(file=fileName, header=TRUE, sep=",") 

file[1:nlines,] # prints out specified no. of lines


# 2. Return information from iris.csv

iris <-read.table(data="iris.csv")

# print last 2 rows and last 2 columns:
tail(iris,2)[,4:5]

# Find number of observations per species, stored in "results"
species<-unique(iris$Species)
results<-data.frame()

for (i in 1:length(species)){
  results[i,1]<-species[i]
  results[i,2]<-sum(iris$Species==species[i])
}
results # Prints results to terminal

# Find rows with sepal width > 3.5, stored in "wideSepal"
wideSepal<-iris[iris$Sepal.Width>3.5,]

# write file with data on setosa species, called setosa.csv
write.table(x=iris[iris$Species=="setosa",], file="setosa.csv", row.names=FALSE, col.names=TRUE, sep=",")




