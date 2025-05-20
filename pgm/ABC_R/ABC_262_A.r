con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
two <- 2
four <- 4
Y <- arr[1] |>
    as.integer()
mod <- Y %% four
year <- Y + (four - two) - mod
if (mod > two) {
    year <- year + four
}
year |>
    cat("\n", sep = "")
q("no")