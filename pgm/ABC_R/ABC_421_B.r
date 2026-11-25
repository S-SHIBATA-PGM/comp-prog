options(scipen = 999)
con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = numeric(), quiet = TRUE)
close(con)
fmt <- "%.0f"
fmt_print <- "%.0f\n"
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
ten <- 10L
eleven <- 11L
rev_num <- function(x) {
  chars <- strsplit(sprintf(fmt, x), blank, fixed = TRUE)[[one]]
  rev_str <- paste0(rev(chars), collapse = blank)
  return(as.numeric(rev_str))
}
X <- token[one]
Y <- token[two]
a <- numeric(eleven)
a[one] <- X
a[two] <- Y
for (i in three:ten) {
  s <- a[i - one] + a[i - two]
  a[i] <- rev_num(s)
}
cat(sprintf(fmt_print, a[ten]))
q("no")