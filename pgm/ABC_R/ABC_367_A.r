con <- file(description = "stdin", open = "r")
ABC <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
Yes <- "Yes"
No <- "No"
ifelse(ABC[3] < ABC[2] && ABC[3] < ABC[1] & ABC[1] < ABC[2],
    Yes,
    ifelse(ABC[2] < ABC[3] && (ABC[1] < ABC[2] || ABC[3] < ABC[1]),
        Yes,
        No)) |>
    cat("\n", sep = "")