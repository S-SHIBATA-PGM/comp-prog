' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger Q
Input Q
Const ABC As String = "ABC"
Const chokudai As String = "chokudai"
Const one As UInteger = 1U
If Q = one Then
    Print ABC
Else
    Print chokudai
End If
End 0