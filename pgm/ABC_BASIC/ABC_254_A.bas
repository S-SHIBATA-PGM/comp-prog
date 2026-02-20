' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer N
Input N
Const padZero As String = "00"
Const hundred As Integer = 100&
Print Right((padZero & Str(N Mod hundred)), Len(padZero))
End 0