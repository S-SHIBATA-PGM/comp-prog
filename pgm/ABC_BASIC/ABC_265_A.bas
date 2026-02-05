' #include "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer X, Y, N
Input X, Y, N
Const three As Integer = 3&
If (X * three < Y) Then
    Print Str(X * N)
Else
    Print Str(X * (N Mod three) + Y * (N \ three))
End If
End 0