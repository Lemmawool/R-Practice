train <- read.csv('~/R-Practice/exercise2/exercise2data1.txt', header=FALSE)

X <- train[,1:2]
y <- train[,3]
m <- nrow(X)
n <- ncol(X)
X <- cbind(rep(1,m), X)



