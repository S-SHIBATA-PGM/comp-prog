con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
aspect_ratio_43 <- "4:3"
aspect_ratio_169 <- "16:9"
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
four <- 4L
W <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
H <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
if (W * three == H * four) {
  aspect_ratio_43 |>
    cat("\n", sep = blank)
} else {
  aspect_ratio_169 |>
    cat("\n", sep = blank)
}
q("no")