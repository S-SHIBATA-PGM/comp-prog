' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer a, b
Input a, b
Const Yes As String = "Yes"
Const No As String = "No"
Const one As Integer = 1&
Const divisor As Integer = 10&
Const zero As Integer = 0&
Dim prv As Integer = (a - one) Mod divisor
Dim nxt As Integer = (a + one) Mod divisor
If prv = zero Then
    prv += divisor
End If
If nxt = zero Then
    nxt += divisor
End If
If b = prv OrElse b = nxt Then
    Print Yes
Else
    Print No
End If
End 0