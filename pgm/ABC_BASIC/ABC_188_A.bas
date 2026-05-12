' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

#define Min(a, b) iif((a) < (b), (a), (b))
#define Max(a, b) iif((a) > (b), (a), (b))
Dim As Integer X, Y
Input X, Y
Const Yes As String = "Yes"
Const No As String = "No"
Const three As Integer = 3&
If Max(X, Y) < Min(X, Y) + three Then
    Print Yes
Else
    Print No
End If
End 0