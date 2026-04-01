' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
#include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer N
Input N
Const AGC As String = "AGC"
Const sharp As String = "#"
Const one As Integer = 1&
Const digit As Integer = 3&
Const missing As Integer = 42&
Const zero As Integer = 0&
Const sZero As String = Str(zero)
Dim As String fmt = String(digit, sZero) 
Dim edition As Integer = N
If N >= missing Then
    edition += one
End If
Print AGC & Format(edition, fmt)
End 0