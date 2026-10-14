suppressPackageStartupMessages(library(bit64))

con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank   <- ""
space   <- " "
yn      <- "\n"
one     <- 1L
two     <- 2L
three   <- 3L
four    <- 4L
five    <- 5L
six     <- 6L
seven   <- 7L
zero   <- 0L
token <- unlist(strsplit(x = arr, split = space, fixed = TRUE)) |>
  Filter(f = nzchar)
t <- token[one] |>
  as.integer()
query <- token[two:length(token)] |>
  bit64::as.integer64()
idx_base <- seq(zero, t - one) * six
X1 <- query[idx_base + one]
Y1 <- query[idx_base + two]
R1 <- query[idx_base + three]
X2 <- query[idx_base + four]
Y2 <- query[idx_base + five]
R2 <- query[idx_base + six]
dx   <- X1 - X2
dy   <- Y1 - Y2
dxy2 <- dx * dx + dy * dy
dr   <- R1 + R2
dr2  <- dr * dr
df   <- R1 - R2
df2  <- df * df
is_ok <- (df2 <= dxy2) & (dxy2 <= dr2)
vec <- sapply(is_ok, function(ok) {
  if (ok) {
    return(Yes)
  } else {
    return(No)
  }
})
vec |>
  cat(sep = yn)
q("no")