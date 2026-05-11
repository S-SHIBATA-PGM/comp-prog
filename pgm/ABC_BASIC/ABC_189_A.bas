' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As String C
Input C
Const Won As String = "Won"
Const Lost As String = "Lost"
Const one As Integer = 1&
Const two As Integer = 2&
Const zero As Integer = 0&
If C[zero] = C[one] AndAlso C[one] = C[two] Then
    Print Won
Else
    Print Lost
End If
End 0