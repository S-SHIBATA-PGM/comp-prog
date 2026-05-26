' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As Integer X
Input X
Const Yes As String = "Yes"
Const No As String = "No"
Const thirty As Integer = 30U
If X >= thirty Then
    Print Yes
Else
    Print No
End If
End 0