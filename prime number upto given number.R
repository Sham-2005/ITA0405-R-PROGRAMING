sieve_of_eratosthenes <- function(limit) {
  sieve <- rep(TRUE, limit)
  sieve[1] <- FALSE
  for (i in 2:sqrt(limit)) {
    if (sieve[i]) {
      sieve[seq(i^2, limit, i)] <- FALSE
    }
  }
  primes <- which(sieve)
  return(primes)
}
primes_up_to_100 <- sieve_of_eratosthenes(100)
cat("Prime numbers up to 100: ", primes_up_to_100, "\n")
