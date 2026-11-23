' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
#include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As UInteger N
Input N
Const m As String = "m"
Const one As UInteger = 1U
Print Str(Month(DateAdd(m, one, DateSerial(Year(Now), N, one))))
End 0