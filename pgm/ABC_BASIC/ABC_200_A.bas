' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer N
Input N
Const one As Integer = 1&
Const hundred As Integer = 100&
If N Mod hundred Then
    Print Str(Int(N / hundred) + one)
Else
    Print Str(N / hundred)
End If
End 0