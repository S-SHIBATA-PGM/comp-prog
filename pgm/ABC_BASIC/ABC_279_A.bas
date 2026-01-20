' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As String S
Input S
Const v As String = "v"
Const one As Integer = 1&
Const two As Integer = 2&
Const zero As Integer = 0&
Dim As Integer cnt = zero
For i As Integer = zero To Len(S) - one
    If Chr(S[i]) = v Then
        cnt += one
    Else
        cnt += two
    EndIf
Next
Print Str(cnt)
End 0