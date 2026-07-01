' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
#define Max(a, b) iif((a) > (b), (a), (b))

Dim As Integer A, B
Input A, B
Print Str(Max(Max(A + B, A - B), A * B))
End 0