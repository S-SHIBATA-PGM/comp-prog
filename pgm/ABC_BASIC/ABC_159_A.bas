' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a

Dim As UInteger N, M
Input N, M
Const one As UInteger = 1U
Const two As UInteger = 2U
Print (N * (N - one) \ two + M * (M - one) \ two)
End 0