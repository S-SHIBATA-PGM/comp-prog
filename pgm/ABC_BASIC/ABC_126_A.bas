' #include once "crt.bi"
#include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger N, K
Input N, K
Dim As String S
Input S
Const one As UInteger = 1U
S[K - one] = tolower(S[K - one])
Print S
End 0