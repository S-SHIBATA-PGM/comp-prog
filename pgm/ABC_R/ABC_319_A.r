con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- arr[1]
legendary_players <- new.env()
legendary_players[["tourist"]] <- 3858
legendary_players[["ksun48"]] <- 3679
legendary_players[["Benq"]] <- 3658
legendary_players[["Um_nik"]] <- 3648
legendary_players[["apiad"]] <- 3638
legendary_players[["Stonefeang"]] <- 3630
legendary_players[["ecnerwala"]] <- 3613
legendary_players[["mnbvmar"]] <- 3555
legendary_players[["newbiedmy"]] <- 3516
legendary_players[["semiexp"]] <- 3481
legendary_players[[S]] |>
    cat("\n", sep = "")
q("no")