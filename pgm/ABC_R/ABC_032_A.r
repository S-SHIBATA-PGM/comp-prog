gcd <- function(a, b) {
  while (b != 0) {
    keep <- b
    b <- a %% b
    a <- keep
  }
  return(a)
}

lcm <- function(a, b) {
  if (a == 0 || b == 0) return(0)
  return(abs(a) * (abs(b) / gcd(a, b)))
}

con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
a <- arr[one] |>
  as.integer()
b <- arr[two] |>
  as.integer()
n <- arr[three] |>
  as.integer()
l <- lcm(a, b)
(ceiling(n / l) * l) |>
  cat("\n", sep = blank)
q("no")