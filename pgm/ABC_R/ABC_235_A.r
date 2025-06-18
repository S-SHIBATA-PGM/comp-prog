con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
a <- strsplit(arr[1], split = "")[[1]][1]
b <- strsplit(arr[1], split = "")[[1]][2]
c <- strsplit(arr[1], split = "")[[1]][3]
abc <- paste0(a, b, c) |>
    as.integer()
bca <- paste0(b, c, a) |>
    as.integer()
cab <- paste0(c, a, b) |>
    as.integer()
(abc + bca + cab) |>
    cat("\n", sep = "")
q("no")