con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- arr[2]
a <- "a"
b <- "b"
Yes <- "Yes"
No <- "No"
ifelse(
    length(grep(paste0(a, b), S)), Yes,
    ifelse(
        length(grep(paste0(b, a), S)), Yes, No)) |>
    cat("\n", sep = "")