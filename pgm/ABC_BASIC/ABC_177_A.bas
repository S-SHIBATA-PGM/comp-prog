' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As Integer D, T, S
Input D, T, S
Const Yes As String = "Yes"
Const No As String = "No"
If D <= S * T Then
    Print Yes
Else
    Print No
End If
End 0