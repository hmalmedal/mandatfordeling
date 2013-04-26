saintelague <- function(r, v, mod = 1) {
  s <- rep.int(0, length(v))
  while (sum(s) < r) {
    k <- v / (2 * s + 1)
    k[s == 0] <- v[s == 0] / mod
    i <- which.max(k)
    s[i] <- s[i] + 1
  }
  return(s)
}
