' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
#define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer A, B
Input A, B
Const one As Integer = 1&
Const zero As Integer = 0&
Print Str(Max(zero, B - A + one))
End 0