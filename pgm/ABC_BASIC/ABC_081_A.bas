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
Const bZero As UByte = Asc("0")
Const one As UInteger = 1U
Const zero As UInteger = 0U
Dim As UInteger cnt = zero
Dim As UInteger length = Len(S)
For i As UInteger = zero To length - one
    Dim As UByte b = S[i]
    cnt += (b - bZero)
Next
Print cnt
End 0