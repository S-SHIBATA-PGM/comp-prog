' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer A, B
Input A, B
Const Yes As String = "Yes"
Const No As String = "No"
Const six As Integer = 6&
If A <= B AndAlso B <= six * A Then
    Print Yes
Else
    Print No
End If
End 0