# More Experimention with Logistic Regression and R's optim function.

source("sigmoid.R")
source("costFuncReg.R")
source("mapFeature.R")
source("predict.R")

train <- read.csv('~/R-Practice/exercise2/exercise2data2.txt', header=FALSE)
X <- as.matrix(train[,1:2])
y <- as.matrix(train[,3])

X <- mapFeature(X[,1], X[,2],6)
theta <- c(rep(0,28))
lambda <- 1
costReg <- costFuncReg(theta, X, y, lambda)
gradReg <- gradFuncReg(theta, X, y, lambda)

lambda2 <- 10
costReg2 <- costFuncReg(theta, X, y, lambda2)
gradReg2 <- gradFuncReg(theta, X, y, lambda2)

result <- optim(theta, costFuncReg, gradFuncReg, X=X, y=y, lambda=lambda, method="BFGS", control=list(maxit=500))
theta <- result$par

prediction <- predict(X, theta)




