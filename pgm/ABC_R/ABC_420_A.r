con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
hyphen <- "-"
persent <- "%"
c_one <- "1"
c_zero <- "0"
Y <- "Y"
m <- "m"
blank <- ""
space <- " "
yn <- "\n"
one <- 1
two <- 2
fmt_y <- paste0(persent, Y)
fmt_m <- paste0(persent, m)
md <- paste0(hyphen, c_zero, c_one, hyphen, c_zero, c_one)
X <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
Y <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
dt <- paste0(format(Sys.Date(), fmt_y), md) |>
  as.POSIXlt()
dt$mon <- dt$mon + (X + Y - one)
dt |>
  format(fmt_m) |>
  as.integer() |>
  cat(yn, sep = blank)
q("no")