' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

#define Min(a, b) IIf((a) < (b), (a), (b))
#define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer N, A, X, Y
Input N, A, X, Y
Const zero As Integer = 0&
Print Str(X * Min(N, A) + Y * Max(zero, N - A))
End 0