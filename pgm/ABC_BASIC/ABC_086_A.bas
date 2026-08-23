' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger a, b
Input a, b
Const Odd As String = "Odd"
Const Even As String = "Even"
Const two As UInteger = 2U
If a * b Mod two Then
    Print Odd
Else
    Print Even
End If
End 0