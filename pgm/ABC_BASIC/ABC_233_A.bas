#include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
#define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer X, Y
Input X, Y
Const ten As Integer = 10&
Const zero As Integer = 0&
Print Str(Max(zero, CInt(Ceil((Y - X) / ten))))
End 0