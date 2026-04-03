' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer S, T, X
Input S, T, X
Const Yes As String = "Yes"
Const No As String = "No"
Const twentyFour As Integer = 24&
If T < S Then
    T += twentyFour
End If
If X < S Then
    X += twentyFour
End If
If S <= X AndAlso X < T Then
    Print Yes
Else
    Print No
End If
End 0