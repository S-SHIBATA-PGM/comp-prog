' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger N, R
Input N, R
Const ten As Uinteger = 10U
Const hundred As Uinteger = 100U
If N >= ten Then
    Print R
Else
    Print R + hundred * (ten - N)
End If
End 0