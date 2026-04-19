' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer A, B
Input A, B
Const Gold As String = "Gold"
Const Silver As String = "Silver"
Const Alloy As String = "Alloy"
Const zero As Integer = 0&
If A > zero AndAlso B > zero Then
    Print Alloy
ElseIf A = zero Then
    Print Silver
Else
    Print Gold
End If
End 0