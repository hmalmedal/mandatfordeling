saintelague <- function(votes, available_seats, modifier = 1) {
  seats <- integer(length(votes))

  for (j in seq_len(available_seats)) {
    divisors <- 2 * seats + 1
    divisors[seats == 0] <- modifier

    quotients <- votes / divisors

    i <- which.max(quotients)
    seats[i] <- seats[i] + 1L
  }

  seats
}
