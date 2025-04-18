con <- file(description = "stdin", open = "r")
NXY <- readLines(con = con)
close(con)
N <- NXY[1][[1]]
Takahashi <- "Takahashi"
Aoki <- "Aoki"
Draw <- "Draw"
X <- c()
Y <- c()
for (i in 1:N) {
    XY <- strsplit(NXY[i + 1], split = " ")[[1]]
    X <- append(X, (XY[1] |> as.integer()))
    Y <- append(Y, (XY[2] |> as.integer()))
}
ifelse(sum(X) > sum(Y), Takahashi, ifelse(sum(X) == sum(Y), Draw, Aoki)) |>
    cat("\n", sep = "")