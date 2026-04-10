con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
YES <- "YES"
NO <- "NO"
blank <- ""
one <- 1L
C <- arr
Rotation <- sapply(rev(C),
    function(s) {
        return(
            paste0(
                rev(strsplit(s, split = blank)[[one]]),
                collapse = blank
            )
        )
    }
)
if (all(C == unname(Rotation))) {
    YES |>
        cat("\n", sep = blank)
} else {
    NO |>
        cat("\n", sep = blank)
}
q("no")