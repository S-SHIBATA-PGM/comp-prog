' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As String S1, S2
Input S1
Input S2
Const sharp As String = "#"
Const Yes As String = "Yes"
Const No As String = "No"
Const zero As Integer = 0&
Const one As Integer = 1&
If Chr(S1[zero]) = sharp AndAlso _
    Chr(S1[one]) <> sharp AndAlso _
    Chr(S2[zero]) <> sharp AndAlso _
    Chr(S2[one]) = sharp Then
    Print No
ElseIf Chr(S1[zero]) <> sharp AndAlso _
    Chr(S1[one]) = sharp AndAlso _
    Chr(S2[zero]) = sharp AndAlso _
    Chr(S2[one]) <> sharp Then
    Print No
Else
    Print Yes
End If
End 0