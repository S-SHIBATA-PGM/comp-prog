' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a

Dim As String S
Input S
Const Yes As String = "Yes"
Const No As String = "No"
Const two As UInteger = 2U
Const three As UInteger = 3U
Const four As UInteger = 4U
Const five As UInteger = 5U
If S[two] = S[three] AndAlso S[four] = S[five] Then
    Print Yes
Else
    Print No
End If
End 0