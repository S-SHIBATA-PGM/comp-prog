' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As String S
Input S
Const a As String = "a"
Const oneMinus As Integer = -1&
Const zero As Integer = 0&
If InStrRev(S, a) = zero Then
    Print Str(oneMinus)
Else
    Print Str(InStrRev(S, a))
EndIf
End 0