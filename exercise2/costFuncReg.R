costFuncReg <- function(theta, X, y, lambda) {
  m <- length(y)
  J <- (1/m) * (t(-y) %*% log(sigmoid(X %*% theta)) - t(1 - y) %*% log(1 - sigmoid(X %*% theta)))
  J <- J + (lambda / (2*m)) * (t(tail(theta, 2)) %*% tail(theta, 2))
  return (J)
}

gradFuncReg <- function(theta, X, y, lambda) {
  m <- length(y)
  n <- length(X[1,])
  grad <- (1/m) * t(X) %*% (sigmoid (X %*% theta) - y)
  grad <- c(head(grad,1), tail(grad, n-1) + (lambda/m)*tail(theta,n-1))
  return (grad)
}

