' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger N
Input N
Const YES As String = "YES"
Const NO As String = "NO"
Const three As UInteger = 3U
Const zero As UInteger = 0U
If N Mod three = zero OrElse InStr(Str(N), Str(three)) > zero Then
    Print YES
Else
    Print NO
End If
End 0