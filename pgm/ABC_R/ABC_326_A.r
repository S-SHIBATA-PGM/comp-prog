con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
two <- 2
three <- 3
Yes <- "Yes"
No <- "No"
XY <- strsplit(arr[1], split = " ")[[1]] |>
    as.integer()
X <- XY[1]
Y <- XY[2]
ifelse(X < Y && Y - X <= two, Yes,
    ifelse(X > Y && X - Y <= three, Yes, No)) |>
    cat("\n", sep = "")