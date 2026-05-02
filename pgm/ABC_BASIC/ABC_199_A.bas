' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer A, B, C
Input A, B, C
Const Yes As String = "Yes"
Const No As String = "No"
Const two As Integer = 2&
If A ^ two + B ^ two < C ^ two Then
    Print Yes
Else
    Print No
End If
End 0