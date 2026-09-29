' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger x, y
Input x, y
Const Yes As String = "Yes"
Const No  As String = "No"
Const one As UInteger = 1U
Const two As UInteger = 2U
Const three As UInteger = 3U
Const twelve As UInteger = 12U
Const zero As UInteger = 0U
Dim As Const Integer g(zero To twelve) = _
    {zero, one, three, one, two, one, two, one, one, two, one, two, one}
If g(x) = g(y) Then
    Print Yes
Else
    Print No
End If
End 0