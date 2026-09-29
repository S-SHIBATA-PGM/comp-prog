con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn    <- "\n"
one   <- 1L
two   <- 2L
three <- 3L
zero  <- 0L
N <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
D <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
X <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
o <- order(X)
x_sorted <- X[o]
l  <- rep(Inf, N)
r <- rep(Inf, N)
df <- diff(x_sorted)
l[two:N]  <- df
r[one:(N - one)] <- df
mn <- pmin(l, r)
is_valid_sorted <- mn >= D
is_valid <- logical(N)
is_valid[o] <- is_valid_sorted
people <- which(is_valid)
K <- length(people)
K |>
  cat(yn, sep = blank)
if (K > zero) {
  paste(people, collapse = space) |>
    cat(yn, sep = blank)
} else {
  cat(yn, sep = blank)
}
q("no")