' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String S
Input S
Const YES As String = "YES"
Const NO As String = "NO"
Const T As String = "T"
Const one As UInteger = 1U
If Right(S, one) = T Then
    Print YES
Else
    Print NO
End If
End 0