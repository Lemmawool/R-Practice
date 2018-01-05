costFunction <- function(theta, X, y) {
  return ((1/m) * (t(-y) %*% log(sigmoid(X %*% theta)) - t(1 - y) %*% log(1 - sigmoid(X %*% theta))))
}

