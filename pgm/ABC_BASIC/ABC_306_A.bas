Dim As Integer N
Input N
Dim As String S
Input S
Const one As Integer = 1
Const two As Integer = 2
Const zero As Integer = 0
For i As Integer = zero To Len(S) - one
    Print String(two, S[i]);
Next
Print
End 0