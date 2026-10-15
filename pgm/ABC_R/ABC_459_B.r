con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
a <- "a"
d <- "d"
g <- "g"
j <- "j"
m <- "m"
p <- "p"
t <- "t"
w <- "w"
z <- "z"
blank <- ""
space <- " "
yn  <- "\n"
one <- 1L
two <- 2L
three <- 3L
four <- 4L
five <- 5L
six <- 6L
seven <- 7L
eight <- 8L
nine <- 9L
tokens <- unlist(strsplit(x = arr, split = space, fixed = TRUE)) |>
  Filter(f = nzchar)
N <- tokens[one] |>
  as.integer()
S <- tokens[two:(two + N - one)]
first <- substr(S, one, one)
char_code_vec <- sapply(first, function(f) {
  return(utf8ToInt(f))
})
break_vec <- c(utf8ToInt(a), utf8ToInt(d), utf8ToInt(g), utf8ToInt(j)
  , utf8ToInt(m), utf8ToInt(p), utf8ToInt(t), utf8ToInt(w), utf8ToInt(z) + one)
value_vec <- c(two, three, four, five, six, seven, eight, nine)
idx <- findInterval(char_code_vec, vec = break_vec, rightmost.closed = TRUE)
value_vec[idx] |>
  paste(collapse = blank) |>
  cat(yn, sep = blank)
q("no")