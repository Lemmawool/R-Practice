costFunc <- function(theta, X, y) {
  m <- length(y)
  J <- (1/m) * (t(-y) %*% log(sigmoid(X %*% theta)) - t(1 - y) %*% log(1 - sigmoid(X %*% theta)))
  return (J)
}

gradFunc <- function(theta, X, y) {
  m <- length(y)
  grad <- (1/m) * t(X) %*% (sigmoid (X %*% theta) - y)
  return (grad)
}

