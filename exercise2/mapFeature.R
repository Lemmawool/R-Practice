# Maps two features to a set of new features depending on degree.
mapFeature <- function(featureA, featureB, degree) {
  X_out <- matrix(c(1), nrow=length(featureA), ncol=28)
  current <- 2
  
  for (i in 1:degree) {
    for (j in 0:i) {
      X_out[, current] <- (featureA ^ (i - j)) * (featureB ^ j)
      current <- current + 1
    }
  }
  
  return (X_out)
}