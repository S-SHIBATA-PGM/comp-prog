$S = [Console]::ReadLine()
[regex]::Matches($S, "[A-Z]").index[0] + 1