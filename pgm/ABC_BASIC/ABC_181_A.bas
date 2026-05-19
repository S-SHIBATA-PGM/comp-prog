' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As Integer N
Input N
Const White As String = "White"
Const Black As String = "Black"
Const two As Integer = 2&
Const zero As Integer = 0&
If N Mod two = zero Then
    Print(White)
Else
    Print(Black)
End If
End 0