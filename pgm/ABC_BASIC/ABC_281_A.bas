' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As Integer N
Input N
Const one As Integer = 1&
Const zero As Integer = 0&
For i As Integer = N To zero Step -one
    Print Str(i)
Next
End 0