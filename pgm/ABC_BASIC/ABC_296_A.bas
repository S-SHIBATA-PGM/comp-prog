'#include "crt/math.bi"
'#include once "pcre.bi"

'#define min(a, b) iif((a) < (b), (a), (b))
'#define max(a, b) iif((a) > (b), (a), (b))

Dim As Integer N
Input N
Dim As String S
Input S
Const M As String = "M"
Const F As String = "F"
Const Yes As String = "Yes"
Const No As String = "No"
Const zero As Integer = 0
If InStr(S, M & M) = zero AndAlso InStr(S, F & F) = zero Then
    Print "Yes"
Else
    Print "No"
End If