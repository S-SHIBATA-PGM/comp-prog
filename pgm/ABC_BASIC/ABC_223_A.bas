' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer X
Input X
Const Yes As String = "Yes"
Const No As String = "No"
Const divisor As Integer = 100&
Const zero As Integer = 0&
If X <> zero AndAlso X Mod divisor = zero Then
    Print Yes
Else
    Print No
End If
End 0