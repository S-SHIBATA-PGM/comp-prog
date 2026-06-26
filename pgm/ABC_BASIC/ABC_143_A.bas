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
Const two As Integer = 2
Const zero As Integer = 0
Print Str(Max(zero, A - two * B))
End 0