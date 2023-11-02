


while(TRUE){
  print("Hello")
}


counter <- 1
while(counter < 12){
  print(counter)
  counter <- counter+ 1
}

#for loop
for(i in 1:5)
  print("hello r")


#if and else statement
rm(answer)
x<- rnorm(1)
if (x>1) {
  answer <- "greater than one"
  
} else{
  answer <- "less than one"
  



#Adding element to vector 
  #this is numeric but not integer

myfirstvector <- c(3,5,7,3,5)
is.numeric(myfirstvector)


#addding element to vector, it is integer

x1 <- c(3L,6L,8L,9L)



#Adding character to vector

x2 <- c("me", "love", "you")




#sequence seq 
s1<- seq(1,9)
s1


#replicate rep
r1<- rep(s1,7)


w<- c("k","m", "i", "p")
w[2:3]
w[2]
w[-2]
w[c(1,3,4)]
w[9]




V9 <- c(50,34,111,7,24,631,20,4,7,21)

v8 <- c(100,2,56,12,0,65,93,10,244,1)

V10 <- V9 + v8
V10


#specific programming loop
t <- rnorm(5)
for (i in t){
  print(i)}

print(t[1])

print(t[c(1,2)])



for (j in 1:5){
  print(t[j])
}







N <- 100
a <- rnorm(N)
b <- rnorm(N)

#VECTORISED APPROACH
c <- a * b

#De-vectorised approach
d <- rep(NA,N)
for (i in 1:N) {
  d[i] <- a[i] * b [i]
}







?seq()

