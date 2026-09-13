' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger A, B
Input A, B
Const Possible As String = "Possible"
Const Impossible As String = "Impossible"
Const three As UInteger = 3U
Const zero As UInteger = 0U
If (A Mod three = zero) OrElse (B Mod three = zero) _
    OrElse ((A + B) Mod three = zero) Then
    Print Possible
Else
    Print Impossible
End If