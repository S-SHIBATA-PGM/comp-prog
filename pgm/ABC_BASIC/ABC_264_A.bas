' #include "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer L, R
Input L, R
Const atcoder As String = "atcoder"
Const one As Integer = 1&
Print Mid(atcoder, L, R - L + one)
End 0