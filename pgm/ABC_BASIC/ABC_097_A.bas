' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Declare Function Diff(ByVal x As UInteger, ByVal y As UInteger) As UInteger

Dim As UInteger a, b, c, d
Input a, b, c, d
Const Yes As String = "Yes"
Const No As String = "No"
If (Diff(a, c) <= d) OrElse ((Diff(a, b) <= d) AndAlso (Diff(b, c) <= d)) Then
    Print Yes
Else
    Print No
End If
End 0

Function Diff(ByVal x As UInteger, ByVal y As UInteger) As UInteger
    Return Abs(x - y)
End Function