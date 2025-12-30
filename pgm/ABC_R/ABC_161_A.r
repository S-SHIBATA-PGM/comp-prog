con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
space <- " "
ABC <- strsplit(x = arr[one], split = space)[[one]] |>
    as.integer()
ABC[c(one, two)] <- ABC[c(two, one)]
ABC[c(one, three)] <- ABC[c(three, one)]
ABC |>
    cat()
cat("\n")
q("no")