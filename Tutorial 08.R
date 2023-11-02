#Dataframes 

#method 1 : select file manually

stats <-read.csv(file.choose())


#method 2: set work directory and read data
getwd()
setwd("C:\\Users\\User pc\\Desktop\\rscript")
getwd()
stats <-read.csv("Demographicdata.csv")
stats

#nrow(name of table) it tells how many rows that was imported

#nrow(stats)
#ncol(stats) shows name of column
#head(stats) shows top 5
#tail() shows bottom 6
#str() tells the structure
#summary ( ) shows the details of the data eg min, mean,max 

#to show a certain numb of data 
#head(table name, n= 15(any number))


str(stats)

summary(stats)


#________________using the $ sign

head(stats)
#how to check the birthrate for angola

stats[3,"Birth.rate"]

str(stats)
#Another to check using the $ sign

stats$Internet.users[2]

levels(stats$Income.Group)



#Basic operators with data frame 
stats
head(stats, n=10)
#or 
stats[1:10,]
stats[c(4,100),]  #to show row 4 and 100

stats[,1]
#to change it to dataframe
stats[,1, drop=FALSE]

stats$Birth.rate * stats$Internet.users

#how to add column
stats$funmi <- stats$Birth.rate * stats$Internet.users

head(stats)



#Filtering Dataframes
head(stats)
stats$Internet.users < 2
filter <- stats$Internet.users < 2
stats[filter,]

stats[stats$Birth.rate > 40 & stats$Internet.users < 2,]

#to find ppl wih high income
stats$Income.Group == "High income"

stats[stats$Country.Name == "malta",]


#visualization -------qplot
library(ggplot2)

install.packages("ggplot2")
library(ggplot2)
?qplot()
qplot(data=stats, x=Internet.users,)

library(ggplot2)
qplot(data=stats, x=Internet.users,)
qplot(data=stats, x=Income.Group, y=Birth.rates,)

head(stats)
 install.packages("crayon")

 
# visualising 
 qplot(data=stats, x=Internet.users, y=Birth.rate)
 qplot(data=stats, x=Internet.users, y=Birth.rate, 
       colour= I("red"), size =I(4))
 
 qplot(data=stats, x=Internet.users, y=Birth.rate, 
       colour= (Income.Group), size =I(4))
 
 
 #Adding vectors to dataframe
 mydf <- data.frame(country=countriesgghjj, region=reggdg)
 
 
 # merging dataframes
 #we will use merge 
 
 merged<- merge(stats,mydf,b.x="country code", b.y="code")
 
 #to remove column
 merged$country <- null
 
 
 
 #visualizing with new split
 
 #ADD SHAPE
 qplot(data=stats, x=Internet.users, y=Birth.rate, 
       colour= (Income.Group), size =I(4),
       shape=I(15))
 
 #TO ADD TRANSPARENCY ADD ALPHA
 
 qplot(data=stats, x=Internet.users, y=Birth.rate, 
       colour= (Income.Group), size =I(4),
       shape=I(15), alpha=I(0.1))
 
 
 #TO ADD TITLE
 
 qplot(data=stats, x=Internet.users, y=Birth.rate, 
       colour= (Income.Group), size =I(4),
       shape=I(15), alpha=I(0.1), main ="birth rate Vs internet users")
 
 
 
 #advanced visualization ggplot function
 #Grammar of graphics
 
#....1.Data
 
 movies <- read.csv("C:\\Users\\User pc\\Desktop\\rscript\\P2-Movie-Ratings.csv")
 head(movies)
colnames(movies) <- c("film", "genre", "criticrating","audiencerating","budgetmilions", "year")
str(movies)
#converting year from numeric to non numeric to get levels
factor(movies$year)
movies$year<- factor(movies$year)
str(movies)


#.....2. Aesthetics (how to map the data)

library(ggplot2)
ggplot(data=movies, aes(x=criticrating, y=audiencerating))

#add geometry

ggplot(data=movies, aes(x=criticrating, y=audiencerating, colour=genre, size=(budgetmilions))) +
  geom_point()

#Plotting with layers

p <- ggplot(data=movies, aes(x=criticrating, y=audiencerating, colour=genre, size=(budgetmilions)))

#points
p+ geom_point()

#lines
p + geom_line()

#multiple layers

p + geom_point() + geom_line()
p + geom_line() + geom_point()

movies
#Overriding aesthetics

q <- ggplot(data=movies, aes(x=criticrating, y=audiencerating, Colour=genre))
q <- ggplot(data=movies, aes(x=criticrating, y=audiencerating, colour=genre, size=(budgetmilions)))

#ad geom layer 

q + geom_point()

#overriding aes
#ex1
q + geom_point(aes(size=criticrating))

#ex2
q + geom_point(aes(colour=budgetmilions))

#ex3 you can override x or y axis' xlab help rename x axis


q + geom_point(aes(x=budgetmilions)) + xlab("budget milions $$$")


#reduce size
q + geom_line(size=1) + geom_point()


#mapping vs setting 
r <- ggplot(data=movies, aes(x=criticrating, y=audiencerating))

r + geom_point()
#add colour
#1 mapping (what we have done so far)

r + geom_point(aes(colour=genre))

#2.setting (when u r setting d colour)
r + geom_point(colour="DarkGreen")


#size 
#1. mapping
r + geom_point(aes(size=budgetmilions))

#2. setting

r + geom_point(size = 10)



#histograms and density charts

s <- ggplot(data=movies, aes(x=budgetmilions))
s + geom_histogram(binwidth = 10)

#add colour 
s + geom_histogram(binwidth = 10, aes(fill=genre)) 

#add border 
s + geom_histogram(binwidth = 10, aes(fill=genre), colour= "Black") 


#DENSITY CHARTS

s + geom_density(aes(fill=genre), position="stack")


#aesthetics tips

#starting layer tips
 t <- ggplot(data=movies)
  t + geom_histogram(binwidth = 10, aes(x=audiencerating), fill="white", colour="blue")
  
  
  
  #statistical layer
  
?geom_smooth
u <- ggplot(data=movies, aes(x=criticrating, y=audiencerating,colour=genre))
u + geom_point() + geom_smooth(fill=NA)

u + geom_boxplot(size=1.2)
u + geom_boxplot(size=1.2) + geom_jitter()
#another way
u + geom_jitter() + geom_boxplot( size=1.2, alpha=0.5)
