'#include "crt/math.bi"
'#include once "pcre.bi"

'#define min(a, b) iif((a) < (b), (a), (b))
'#define max(a, b) iif((a) > (b), (a), (b))

Dim As Integer N
Input N
Dim As String S
Input S
Const GOOD As String = "o"
Const FAILING As String = "x"
Const Yes As String = "Yes"
Const No As String = "No"
Const one As Integer = 1&
Const zero As Integer = 0&
Dim As Boolean hasGood = False
Dim As Boolean hasFailing = False
For i As Integer = zero To N - one
    If S[i] = Asc(GOOD) Then
        hasGood = True
        Exit For
    End If
Next
For i As Integer = zero To N - one
    If S[i] = Asc(FAILING) Then
        hasFailing = True
        Exit For
    End If
Next
If hasGood AndAlso (Not hasFailing) Then
    print Yes
Else
    print No
End If
End 0