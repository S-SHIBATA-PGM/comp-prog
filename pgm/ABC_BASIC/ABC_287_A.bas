' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As Integer N
Input N
Const one As Integer = 1&
Const two As Integer = 2&
Const zero As Integer = 0&
Const strFor As String = "For"
Const Yes As String = "Yes"
Const No As String = "No"
Dim As Integer most = (N + one) \ two
Dim As Integer cntFor = zero
Dim As Integer cntAgainst = zero
For i As Integer = one To N
    Dim As String S
    Input S
    If S = strFor Then
        cntFor += one
    Else
        cntAgainst += one
    End If
    If cntFor >= most Then
        Print Yes
        Exit For
    ElseIf cntAgainst >= most Then
        Print No
        Exit For
    End If
Next
End 0