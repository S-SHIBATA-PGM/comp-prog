' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger a, b, c, d, e, k
Input a, b, c, d, e, k
Const no As String = ":("
Const Yay As String = "Yay!"
If e - a <= k Then
    Print Yay
Else
    Print no
End If
End 0