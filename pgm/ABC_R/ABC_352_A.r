con <- file(description = "stdin", open = "r")
NXYZ <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
Yes <- "Yes"
No <- "No"
X <- NXYZ[2]
Y <- NXYZ[3]
Z <- NXYZ[4]
ifelse(min(X, Y) <= Z && Z <= max(X, Y), Yes, No) |>
    cat("\n", sep = "")