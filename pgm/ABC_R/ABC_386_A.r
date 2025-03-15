con <- file(description = "stdin", open = "r")
ABCD <- readLines(con = con, n = 1) |> strsplit(split = " ") |> unlist() |> as.integer()
close(con)
Yes <- "Yes"
No <- "No"
cards <- c(rep(0, 13))
cards[ABCD[1]] <- cards[ABCD[1]] + 1
cards[ABCD[2]] <- cards[ABCD[2]] + 1
cards[ABCD[3]] <- cards[ABCD[3]] + 1
cards[ABCD[4]] <- cards[ABCD[4]] + 1
threeCards = 0
pairs = 0
for (cnt in cards) {
    if (cnt == 3) {
        threeCards = threeCards + 1
        break
    } else if (cnt == 2) {
        pairs = pairs + 1
    }
}
cat(ifelse(threeCards == 1, Yes, ifelse(pairs == 2, Yes, No)))
cat("\n")