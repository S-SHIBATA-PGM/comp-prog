con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
p <- paste0(
    "3.1415926535897932384626433832795028841971693993751058209749445923078164",
    "062862089986280348253421170679"
)
p |>
    substr(start = 1, stop = N + 2) |>
    cat("\n", sep = "")
q("no")