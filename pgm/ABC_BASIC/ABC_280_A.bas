' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As Integer H, W
Input H, W
Const sharp As String = "#"
Const one As Integer = 1&
Const zero As Integer = 0&
Dim As String S
Dim As Integer ps, cnt
For i As Integer = one To H
    Input S
    ps = InStr(S, sharp)
    While ps > zero
        cnt += one
        ps = InStr(ps + one, S, sharp)
    Wend
Next
Print Str(cnt)
End 0