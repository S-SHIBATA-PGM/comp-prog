' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer n
Input n
Const two As LongInt = 2LL
Const Yes As String = "Yes"
Const No As String = "No"
If two ^ n > n ^ two Then
    Print Yes
Else
    Print No
End If
End 0