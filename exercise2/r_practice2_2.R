

source("sigmoid.R")
source("costFuncReg.R")
source("mapFeature.R")

train <- read.csv('~/R-Practice/exercise2/exercise2data2.txt', header=FALSE)
X <- as.matrix(train[,1:2])
y <- as.matrix(train[,3])

X <- mapFeature(X[,1], X[,2],6)




