' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As String S
Input S
Const one As Integer = 1
Const two As Integer = 2
Const zero As Integer = 0
For i As Integer = zero To Len(S) \ two - one
    Swap S[two * i], S[two * i + one]
Next
Print S
End 0