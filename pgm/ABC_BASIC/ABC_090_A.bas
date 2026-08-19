' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String c1, c2, c3
Input c1
Input c2
Input c3
Const one As UInteger = 1U
Const two As UInteger = 2U
Const zero As UInteger = 0U
Print Chr(c1[zero]) & Chr(c2[one]) & Chr(c3[two])
End 0