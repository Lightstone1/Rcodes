

mydata <- rnorm(100,50,1)

games<- matrix(mydata,10,10)

rownames(games) <- c("funmi", "sekina", "timothy", "kn","yus","ire","kore","mine","lov", "pice")
colnames(games) <- c (2005,2006,2007,2008,2009,2010,2011,2012,2013,2014)
round(games,0)


?matplot()
matplot(t(games), type = "b", pch=15:18, col=c(1:4:6))
legend("bottom left", inset=0.01, legend=rownames(games),col=c(1:4:6), pch=15:18, hor=f)
legend("bottomleft", legend = rownames(games), col = 1:10, pch = 15:18, horiz = TRUE)






games[1,10]
games[c(2007,2009)]


