[string] $N = [Console]::ReadLine()
[string] $a = $N.substring(0, 1)
[string] $b = $N.substring(1, 1)
[string] $c = $N.substring(2, 1)
Write-Host "$b$c$a $c$a$b"