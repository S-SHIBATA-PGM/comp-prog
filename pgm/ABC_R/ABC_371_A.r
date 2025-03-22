con <- file(description = "stdin", open = "r")
S <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist()
close(con)
gt <- ">"
A <- "A"
B <- "B"
C <- "C"
rank <- function(s, a, b, ABC) {
    if (gt == s) {
        if (match(a, ABC) < match(b, ABC)) {
            ABC <- ABC[-match(b, ABC)]
            ABC <- append(ABC, b, after = match(a, ABC) - 1)
        }
    } else {
        if (match(b, ABC) < match(a, ABC)) {
            ABC <- ABC[-match(a, ABC)]
            ABC <- append(ABC, a, after = match(b, ABC) - 1)
        }
    }
    return(ABC)
}
ABC <- c(A, B, C)
ABC <- rank(S[1], A, B, ABC)
ABC <- rank(S[2], A, C, ABC)
ABC <- rank(S[3], B, C, ABC)
ABC[2] |>
    cat("\n", sep = "")