' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String N
Input N
Const Yes As String = "Yes"
Const No  As String = "No"
Const strNine As String = "9"
Const zero As UInteger = 0U
If InStr(N, strNine) Then
    Print Yes
Else
    Print No
End If
End 0