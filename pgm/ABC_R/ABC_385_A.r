con <- file(description = "stdin", open = "r")
ABC <- readLines(con = con, n = 1) |> strsplit(split = " ") |> unlist() |> as.integer()
close(con)
no <- "no"
Yes <- "Yes"
No <- "No"
if (ABC[1] == ABC[2] && ABC[2] == ABC[3]) {
    cat(Yes)
    cat("\n")
    q(no)
} else if (ABC[1] == ABC[2] + ABC[3]) {
    cat(Yes)
    cat("\n")
    q(no)
} else if (ABC[2] == ABC[1] + ABC[3]) {
    cat(Yes)
    cat("\n")
    q(no)
} else if (ABC[3] == ABC[2] + ABC[1]) {
    cat(Yes)
    cat("\n")
    q(no)
}
cat(No)
cat("\n")