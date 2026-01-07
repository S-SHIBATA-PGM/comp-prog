' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As String S
Input S
Const A As String = "A"
Const Z As String = "Z"
Const one As Integer = 1
Const zero As Integer = 0
For i As Integer = zero To Len(S) - one
    If Asc(A) <= S[i] AndAlso S[i] <= Asc(Z) Then
        Print Str(i + 1)
        Exit For
    End If
Next
End 0