con <- file(description = "stdin", open = "r")
S <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist()
close(con)
gt <- ">"
A <- "A"
B <- "B"
C <- "C"
ABC <- c(A, B, C)
if (gt == S[1]) {
    if (match(A, ABC) < match(B, ABC)) {
        ABC <- ABC[-match(B, ABC)]
        ABC <- append(ABC, B, after = match(A, ABC) - 1)
    }
} else {
    if (match(B, ABC) < match(A, ABC)) {
        ABC <- ABC[-match(A, ABC)]
        ABC <- append(ABC, A, after = match(B, ABC) - 1)
    }
}
if (gt == S[2]) {
    if (match(A, ABC) < match(C, ABC)) {
        ABC <- ABC[-match(C, ABC)]
        ABC <- append(ABC, C, after = match(A, ABC) - 1)
    }
} else {
    if (match(C, ABC) < match(A, ABC)) {
        ABC <- ABC[-match(A, ABC)]
        ABC <- append(ABC, A, after = match(C, ABC) - 1)
    }
}
if (gt == S[3]) {
    if (match(B, ABC) < match(C, ABC)) {
        ABC <- ABC[-match(C, ABC)]
        ABC <- append(ABC, C, after = match(B, ABC) - 1)
    }
} else {
    if (match(C, ABC) < match(B, ABC)) {
        ABC <- ABC[-match(B, ABC)]
        ABC <- append(ABC, B, after = match(C, ABC) - 1)
    }
}
ABC[2] |>
    cat("\n", sep = "")