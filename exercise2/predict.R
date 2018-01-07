predict <- function(theta, X) {
  return (sigmoid (t(theta) %*% t(X)) >= 0.5)
}