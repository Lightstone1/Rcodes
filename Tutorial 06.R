#VECTOR
#combine c
myfirstvector <- c(3,45,88,732)
myfirstvector
is.numeric(myfirstvector)
is.integer(myfirstvector)
is.double(myfirstvector)

v2 <- c(12L,3L,343L)
is.integer(v2)


v3 <- c("c", "bhj", "hello", 7)
is.character(v3)



###SEQUENCE

seq(1,15)
1:15
seq(1,15,2)
seq(1,15,4)



#replicate rep

rep(3,50)

x<- c(17,95)
y<- rep(x,10)
y


#how to access individual element of a vector

w <- c('j', "h", "g")
w[-1]
w[2]
v<- w[-2]

w[c(1,2)]


#Matrix

mydata <- 1:30
f<- matrix(mydata,6,5)
f

e<-matrix(mydata,6,5, byrow = TRUE)
e

#rbind binding rows
r1<- c("i", "am", "funmi")
r2<- c("i", "love", "segun")
r3<- c("i", "love", "koreire")

r<- rbind(r1,r2,r3)
r


#cbind binding columns
c1<- 1:9
c2<- c(-1:-9)

c<- cbind(c1,c2)
c

#naming dimensions (renaming rows n column)

charlie <- 1:5
charlie

#give names
names(charlie) <- c("a","b","c","d","e")
names(charlie)


#clear names
names(charlie)<- NULL



#NAMING METRICS DIMENSIONS .... You can use each or times in replicate

temp.vec <- rep(c("a", "b", "zz"), each=3)
temp.vec

Bravo <- matrix(temp.vec, 3, 3)
Bravo


rownames(Bravo) <- c("How", "are", "you")

Bravo

colnames(Bravo) <- c("i", "love", "you")
Bravo

#how to change a particular element

Bravo["are","love"] <- 0

Bravo


#To remove row names or column name 



