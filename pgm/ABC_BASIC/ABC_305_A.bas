Dim As Integer N
Input N
Const five As Integer = 5
If five - N Mod five < N Mod five Then
    Print Str(N + five - N Mod five)
Else
    Print Str(N - N Mod five)
End If
End 0