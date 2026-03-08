' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As String S
Input S
Const one As Integer = 1&
Const two As Integer = 2&
Const zero As Integer = 0&
Const cEight As UByte = Asc("8")
Const cZero As UByte = Asc("0")
For i As Integer = zero To Len(S) - two
    For j As Integer = i + one To Len(S) - one
        If S[i] > S[j] Then Swap S[i], S[j]
    Next
Next
For i As Integer = zero To Len(S) - one
    If S[i] <> i + cZero Then
        Print Chr(i + cZero)
        Exit For
    ElseIf i + cZero = cEight Then
        Print Chr(one + cEight)
        Exit For
    End If
Next
End 0