' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
#define Min(a, b) iif((a) < (b), (a), (b))
#define Max(a, b) iif((a) > (b), (a), (b))

Dim As Integer N, K, X, Y
Input N
Input K
Input X
Input Y
Const zero As Integer = 0&
Print Str(X * Min(N, K) + Max(zero, Y * (N - K)))
End 0