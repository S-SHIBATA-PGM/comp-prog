' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As String s
Input s
Const one As Integer = 1&
Const zero As Integer = 0&
For i As Integer = zero To Len(s) - one
    s[i] = s[i] Xor one
Next
Print s
End 0