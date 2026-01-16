' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As Integer N
Input N
Const one As Integer = 1&
Const zero As Integer = 0&
Const blank As String = ""
Dim As String ln
Input ln
Dim X(N - one) As String
Dim i As Integer = zero
While Len(Ln) > zero
    X(i) = ln
    Input ln
    i += one
Wend
For i As Integer = UBound(X) To LBound(X) step -one
    Print X(i)
Next
End 0