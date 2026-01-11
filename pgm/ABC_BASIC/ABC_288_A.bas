' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As Integer N
Input N
Const one As Integer = 1&
Const zero As Integer = 0&
For i As Integer = zero To N - one
    Dim As Integer A, B
    Input A, B
    Print Str(A + B)
Next
End 0