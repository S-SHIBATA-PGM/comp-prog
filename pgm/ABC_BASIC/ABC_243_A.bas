' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer V, A, B, C
Input V, A, B, C
Const T As String = "T"
Const F As String = "F"
Const M As String = "M"
Const zero As Integer = 0&
Dim turn As String = T
While (V >= zero)
    If turn = T Then
        V -= A
        turn = F
    ElseIf turn = F Then
        V -= B
        turn = M
    Else
        V -= C
        turn = T
    End If
Wend
Print turn
End 0