' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger r, g, b
Input r, g, b
Const YES As String = "YES"
Const No As String = "NO"
Const four As UInteger = 4U
Const ten As UInteger = 10U
Const hundred As UInteger = 100U
Const zero As UInteger = 0U
If (r * hundred + g * ten + b) Mod four = zero Then
    Print YES
Else
    Print NO
End If
End 0