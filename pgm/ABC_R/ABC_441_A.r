con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No  <- "No"
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
hundred <- 100L
P <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
Q <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
X <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
Y <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
if (P <= X && X <= P + hundred - one && Q <= Y && Y <= Q + hundred - one) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")