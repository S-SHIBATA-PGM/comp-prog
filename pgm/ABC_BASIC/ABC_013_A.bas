' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As String X
Input X
Const iA As UInteger = Asc("A")
Const one As UInteger = 1U
Const zero As UInteger = 0U
Print X[zero] - iA + one
End 0