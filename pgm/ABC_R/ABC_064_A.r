con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
YES <- "YES"
NO <- "NO"
blank <- ""
space <- " "
one <- 1
four <- 4
rgb <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]]
if (rgb |>
        paste0(collapse = blank)  |>
        as.integer() %% four) {
    NO |>
        cat("\n", sep = blank)
} else {
    YES |>
        cat("\n", sep = blank)
}
q("no")