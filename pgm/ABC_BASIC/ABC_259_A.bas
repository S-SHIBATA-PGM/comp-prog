' #include "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

#define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer N, M, X, T, D
Input N, M, X, T, D
Dim As Integer zero = 0&
Print Str(T + Min(zero, (M - X) * D))
End 0