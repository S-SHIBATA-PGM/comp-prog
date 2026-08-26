' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger A, B, C, D
Input A, B, C, D
Const sLeft As String = "Left"
Const Balanced As String = "Balanced"
Const sRight As String = "Right"
If A + B > C + D Then
    Print sLeft
ElseIf A + B < C + D Then
    Print sRight
Else
    Print Balanced
End If
End 0