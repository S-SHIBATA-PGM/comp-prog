con <- file(description = "stdin", open = "r")
A <- readLines(con = con, n = 1) |> strsplit(split = "") |> unlist() |> as.integer()
close(con)
nums <- A |> table() |> as.numeric()
cat((nums / 2) |> trunc() |> sum())
cat("\n")