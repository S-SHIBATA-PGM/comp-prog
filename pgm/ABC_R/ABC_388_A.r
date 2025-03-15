con <- file(description = "stdin", open = "r")
S <- scan(file = con, what = character(), n = 1) |> strsplit(split = "") |> unlist()
close(con)
UPC <- "UPC"
cat(paste0(S[1], UPC))
cat("\n")