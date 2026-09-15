' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As Integer X, A, B
Input X, A, B
Const delicious As String = "delicious"
Const safe As String = "safe"
Const dangerous As String = "dangerous"
Const zero As Integer = 0
If (B - A) <= zero Then
    Print delicious
ElseIf (B - A) <= X Then
    Print safe
Else
    Print dangerous
End If
End 0