con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
sharp <- "#"
period <- "."
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
token <- strsplit(x = arr, split = space, fixed = TRUE) |>
  unlist() |>
  Filter(f = nzchar)
H <- token[one] |>
  as.integer()
W <- token[two] |>
  as.integer()
top_bottom <- strrep(sharp, W)
if (W == one) {
  middle <- sharp
} else if (W == two) {
  middle <- paste0(sharp, sharp)
} else {
  middle <- paste0(sharp, strrep(period, W - two), sharp)
}
for (i in one:H) {
  if (i == one || i == H) {
    top_bottom |>
      cat(yn, sep = blank)
  } else {
    middle |>
      cat(yn, sep = blank)
  }
}
q("no")