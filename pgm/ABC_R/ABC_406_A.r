con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
H <- "H"
M <- "M"
colon <- ":"
percent <- "%"
UTC <- "UTC"
fmt <- paste0(percent, H, colon, percent, M)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
four <- 4L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
C <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
  as.integer()
D <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][four] |>
  as.integer()
AB <- paste0(A, colon, B) |>
  as.POSIXct(format = fmt, tz = UTC)
CD <- paste0(C, colon, D) |>
  as.POSIXct(format = fmt, tz = UTC)
if (CD < AB) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")