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
lower1 <- 1600L
lower2 <- 1200L
upper1 <- 2999L
upper2 <- 2399L
lower <- c(lower1, lower2)
upper <- c(upper1, upper2)
R <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
X <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
if ((lower[X] <= R) && (R <= upper[X])) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")