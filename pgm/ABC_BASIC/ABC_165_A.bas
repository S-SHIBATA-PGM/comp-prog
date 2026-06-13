' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger K
Input K
Dim As UInteger A, B
Input A, B
Const OK As String = "OK"
Const NG As String = "NG"
If A <= (B \ K) * K Then
    Print OK
Else
    Print NG
End If
End 0