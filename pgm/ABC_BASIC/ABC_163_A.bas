' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
#include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger R
Input R
Const two As UInteger = 2U
Print Str(two * M_PI * R)
End 0