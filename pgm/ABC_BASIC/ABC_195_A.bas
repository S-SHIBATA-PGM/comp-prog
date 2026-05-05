' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer M, H
Input M, H
Const Yes As String = "Yes"
Const No As String = "No"
If H Mod M Then
    Print No
Else
    Print Yes
End If
End 0