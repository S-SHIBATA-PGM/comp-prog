con <- file(description = "stdin", open = "r")
ST <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist()
close(con)
Yes <- "Yes"
No <- "No"
AtCoder <- "AtCoder"
Land <- "Land"
S <- ST[1]
t <- ST[2]
ifelse(S == AtCoder && t == Land, Yes, No) |>
    cat("\n", sep = "")