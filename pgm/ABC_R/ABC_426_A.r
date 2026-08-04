con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
X <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one]
Y <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two]
OS <- c("Ocelot", "Serval", "Lynx")
if (match(x = Y, table = OS) <= match(x = X, table = OS)) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")