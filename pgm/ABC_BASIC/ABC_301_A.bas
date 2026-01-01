'#include "crt/math.bi"

'#define min(a, b) iif((a) < (b), (a), (b))
#define max(a, b) iif((a) > (b), (a), (b))

Dim As Integer N
Input N
Dim As String S
Input S
Const T As String = "T"
Const A As String = "A"
Const one As Integer = 1
Const zero As Integer = 0
Dim As Integer cntT = zero, cntA = zero
For i As Integer = zero To Len(S) - one
    If S[i] = Asc(T) Then
        cntT += one
    Else
        cntA += one
    End If
Next
Dim As Integer most = max(cntT, cntA)
cntT = zero
cntA = zero
For i As Integer = zero To Len(S) - one
    If S[i] = Asc(T) Then
        cntT += one
    Else
        cntA += one
    End If
    If cntT >= most Then
        Print(T)
        Exit For
    ElseIf cntA >= most Then
        Print(A)
        Exit For
    End If
Next
End 0