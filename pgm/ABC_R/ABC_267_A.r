# dow[["Monday"]] == 1
# dow[["Tuesday"]] == 2
# dow[["Wednesday"]] == 3
# dow[["Thursday"]] == 4
# dow[["Friday"]] == 5
# dow[["Saturday"]] == 6
# dow[["Sunday"]] == 0
get_day_of_week_by_code <- function(dow, upper_case_flg = FALSE) {
    continue_flg = TRUE
    base_date <- Sys.Date()
    idx <- 0
    while (continue_flg) {
        current_date <- base_date + idx
        # str(current_date) |>
        #    cat("\n", sep = "")
        # %A 曜日名
        # %a 曜日名 短縮形
        ##  実行環境 ロケール設定
        # original_locale <- Sys.getlocale("LC_TIME")
        ##  日本語 ロケール設定
        # Sys.setlocale("LC_TIME", "ja_JP.UTF-8")
        ##  ロケール設定 元に戻す
        # Sys.setlocale("LC_TIME", original_locale)
        original_locale <- Sys.getlocale("LC_TIME")
        Sys.setlocale("LC_TIME", "C.UTF-8")
        if (!exists(format(current_date, "%A"), envir = dow)) {
            dow[[format(current_date, "%A")]] <- format(current_date, "%w") |>
                as.integer()
            idx <- idx + 1
        } else {
            continue_flg <- FALSE
        }
        Sys.setlocale("LC_TIME", original_locale)
    }
    return(dow)
}
con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
const_saturday <- "Saturday"
S <- arr[1]
day_of_week <- new.env()
tryCatch({
    day_of_week <- get_day_of_week_by_code(day_of_week)
    day_of_week_saturday <- day_of_week[[const_saturday]]
    (day_of_week_saturday - day_of_week[[S]]) |>
        cat("\n", sep = "")
},
error = function(e) {
    # message("error")
    # message(e)
},
warning = function(e) {
    # message("warning")
    # message(e)
},
finally = {
    # message("finally")
},
silent = TRUE
)
q("no")