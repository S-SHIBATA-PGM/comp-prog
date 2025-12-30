Dim As Integer N
Input N
Const zero As Integer = 0
Const one As Integer = 1
Const sp As String = " "
Dim As String S(N - one)
Dim As Integer A(N - one)
For i As Integer = zero To N - one
    Dim As String ln
    Input ln
    Dim As Integer ps = InStr(ln, sp)
    S(i) = Left(ln, ps - 1)
    A(i) = Val(Mid(ln, ps + 1))
Next
Dim As Integer idx = zero
Dim As Integer min = A(idx)
For i As Integer = LBound(A) + one To UBound(A)
    If A(i) < min Then
        idx = i
        min = A(idx)
    End If
Next
For i As Integer = zero To UBound(A)
    Print(S((i + idx) Mod N))
Next
End 0