' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As Integer K
Input K
Const A As String = "A"
Const one As Integer = 1&
Const zero As Integer = 0&
Dim As UByte c = Asc(A)
For i As Integer = zero To K - one
    Print Chr(c + i);
Next
Print
End 0