' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer a, b, c
Input a, b, c
Const three As Integer = 3&
Const seven As Integer = 7&
Print Str(seven * three - a - b - c)
End 0