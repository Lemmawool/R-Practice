costFuncReg <- function(theta, X, y, lambda) {
  m <- length(y)
  J <- (1/m) * (t(-y) %*% log(sigmoid(X %*% theta)) - t(1 - y) %*% log(1 - sigmoid(X %*% theta)))
  J <- J + (lambda / (2*m)) * (t(tail(theta, 2)) * tail(theta, 2))
  return (J)
}