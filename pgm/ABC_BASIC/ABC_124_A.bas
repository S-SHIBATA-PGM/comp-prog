' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
#define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger A, B
Input A, B
Const one As UInteger = 1U
Const two As UInteger = 2U
If A = B Then
    Print A * two
Else
    Print Max(A, B) * two - one
End If
End 0