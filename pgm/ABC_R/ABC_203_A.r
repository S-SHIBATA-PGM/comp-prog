con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
no <- 0
one <- 1
two <- 2
three <- 3
zero <- 0
abc <- strsplit(arr[one], split = " ")[[one]] |>
    as.integer()
break_flg <- FALSE
for (i in zero:(length(abc) - one)) {
    if (break_flg) break
    if (abc[(i + one) %% three + one] == abc[(i + two) %% three + one]) {
        break_flg <- TRUE
        abc[i + one] |>
            cat("\n", sep = "")
    }
}
if (!break_flg) no |>
    cat("\n", sep = "")
q("no")