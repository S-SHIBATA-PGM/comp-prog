' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer A, B, C, X
Input A, B, C, X
Const fmt As String = "#.############"
Const one As Integer = 1&
Const zero As Integer = 0&
If X <= A Then
    Print Using fmt; one
ElseIf X <= B Then
    Print Using fmt; C / (B - A)
Else
    Print Using fmt; zero
End If
End 0