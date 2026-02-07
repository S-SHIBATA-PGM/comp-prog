' #include "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer A, B, C, D, E
Input A, B, C, D, E
Const Yes As String = "Yes"
Const No As String = "No"
Const one As Integer = 1&
Const two As Integer = 2&
Const three As Integer = 3&
Const thirteen As Integer = 13&
Const zero As Integer = 0&
Dim As Integer cards(thirteen - one)
cards(A - one) += one
cards(B - one) += one
cards(C - one) += one
cards(D - one) += one
cards(E - one) += one
Dim As Integer threeCards = zero
Dim As Integer pairs = zero
For i As Integer = LBound(cards) To UBound(cards)
    If cards(i) = three Then
        threeCards += one
    ElseIf cards(i) = two Then
        pairs += one
    End If
Next
If threeCards = one AndAlso pairs = one Then
    Print Yes
Else
    Print No
End If
End 0