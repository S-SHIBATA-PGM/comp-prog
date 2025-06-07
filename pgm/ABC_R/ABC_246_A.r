con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
space <- " "
first <- 1
second <- 2
zero <- 0
one <- 1
two <- 2
three <- 3
x <- vector(mode = "numeric", length = three)
y <- vector(mode = "numeric", length = three)
for (i in one:three) {
    xy <- strsplit(arr[i], split = space)[[one]] |>
        as.integer()
    x[i] <- xy[first]
    y[i] <- xy[second]
}
point_x <- x[one]
point_y <- y[one]
if (x[three] == x[one]) {
    point_x <- x[two]
} else if (x[one] == x[two]) {
    point_x <- x[three]
}
if (y[three] == y[one]) {
    point_y <- y[two]
} else if (y[one] == y[two]) {
    point_y <- y[three]
}
c(point_x, point_y) |>
    cat()
cat("\n")
q("no")