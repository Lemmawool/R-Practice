

source("sigmoid.R")
source("costFunction.R")

train <- read.csv('~/R-Practice/exercise2/exercise2data1.txt', header=FALSE)

X <- as.matrix(train[,1:2])
y <- matrix(train[,3], nrow = nrow(X), ncol = 1)
m <- nrow(X)
n <- ncol(X)
X <- cbind(rep(1,m), X)

theta <- matrix(c(rep(0,n+1)), nrow = n+1, ncol = 1)

J <- costFunction(theta, X, y)




