#define min(a, b) iif((a) < (b), (a), (b))
#define max(a, b) iif((a) > (b), (a), (b))

Dim As Integer N
Input N
Dim As String S, T
Input S
Input T
Const cOne As Integer = Asc("1")
Const cL As Integer = Asc("l")
Const cZero As Integer = Asc("0")
Const cO As Integer = Asc("o")
Const Yes As String = "Yes"
Const No As String = "No"
Const one As Integer = 1
Const zero As Integer = 0
Dim As Boolean match = True
For i As Integer = zero To Len(S) - one
    If S[i] <> T[i] AndAlso ( _
        min(S[i], T[i]) <> cOne OrElse _
        max(S[i], T[i]) <> cL) AndAlso ( _
        min(S[i], T[i]) <> cZero OrElse _
        max(S[i], T[i]) <> cO) _
    Then
        match = False
        Exit For
    End If
Next
If match Then
    Print Yes
Else
    Print No
End If
End 0