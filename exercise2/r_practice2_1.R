# Experimenting with Logistic Regression and R's optim function.

source("sigmoid.R")
source("costFunction.R")

train <- read.csv('~/R-Practice/exercise2/exercise2data1.txt', header=FALSE)

X <- as.matrix(train[,1:2])
y <- matrix(train[,3], nrow = nrow(X), ncol = 1)
m <- nrow(X)
n <- ncol(X)
X <- cbind(rep(1,m), X)

theta <- matrix(c(rep(0,n+1)), nrow = n+1, ncol = 1)
theta2 <- matrix(c(-24, 0.2, 0.2), nrow = n+1, ncol = 1)

cost <- costFunc(theta, X, y)
grad <- gradientFunc(theta, X, y)

cost2 <- costFunc(theta2, X, y)
grad2 <- gradientFunc(theta2, X, y)

result <- optim(theta, costFunc, gradFunc, X=X, y=y, method="BFGS", control=list(maxit=500))
theta <- result$par


