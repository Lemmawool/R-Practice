predict <- function(X, theta) {
  return (sigmoid(X %*% theta) >= 0.5)
}