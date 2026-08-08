con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
eight <- 8L
world <- strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]][one] |>
  as.integer()
stage <- strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]][three] |>
  as.integer()
if (stage == eight) {
  world <- world + one
  stage <- one
} else {
  stage <- stage + one
}
paste0(world,
  strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]][two],
  stage) |>
  cat(yn, sep = blank)
q("no")