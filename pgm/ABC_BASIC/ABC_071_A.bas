' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As Integer x, a, b
Input x, a, b
Const bigA As String = "A"
Const bigB  As String = "B"
If Abs(x - a) < Abs(x - b) Then
    Print bigA
Else
    Print bigB
End If
End 0