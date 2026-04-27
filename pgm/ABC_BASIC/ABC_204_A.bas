' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer x, y
Input x, y
Const three As Integer = 3&
If x = y Then
    Print Str(x)
Else
    Print Str(three - x - y)
End If
End 0