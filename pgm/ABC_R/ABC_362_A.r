con <- file(description = "stdin", open = "r")
RGB <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
C <- readLines(con = con, n = 1)
close(con)
Red <- "Red"
Green <- "Green"
Blue <- "Blue"
RGB[c(Red, Green, Blue) != C] |>
    min() |>
    cat("\n", sep = "")