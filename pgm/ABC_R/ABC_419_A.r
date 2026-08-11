con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Unknown <- "Unknown"
red <- "red"
blue <- "blue"
green <- "green"
SSS <- "SSS"
FFF <- "FFF"
MMM <- "MMM"
blank <- ""
yn <- "\n"
one <- 1L
S <- arr[one]
language <- c(
  red = SSS,
  blue = FFF,
  green = MMM
)
if (S %in% names(language)) {
  language[S] |>
    cat(yn, sep = blank)
} else {
  Unknown |>
    cat(yn, sep = blank)
}
q("no")