' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a

Dim As String S, T
Input S
Input T
Const Yes As String = "Yes"
Const No As String = "No"
If Left(T, Len(S)) = S Then
    Print Yes
Else
    Print No
End If
End 0