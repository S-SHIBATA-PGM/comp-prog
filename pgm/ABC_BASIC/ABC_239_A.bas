' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
#include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Double H
Input H
Const additional As Double = 12800000#
Const fmt As String = "0.000000000"
Print Format(Sqr(H * (additional + H)), fmt)
End 0