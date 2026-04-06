' #include once "crt.bi"
#include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Declare Function factorial(ByVal n As Integer) As LongInt

Dim As String S
Input S
Dim As Integer m(UCHAR_MAX)
For i As Integer = 0 To Len(S) - 1
    m(S[i]) += 1
Next
Dim As LongInt divisor = 1LL
For i As Integer = LBound(m) To UBound(m)
    If m(i) > 0 Then
        divisor *= factorial(m(i))
    End If
Next
Print Str(factorial(Len(S)) / divisor)
End 0

Function factorial(ByVal n As Integer) As LongInt
    Const zero As Integer = 0&
    Const one As Integer = 1&
    If n > zero Then
        Return n * factorial(n - one)
    Else
        Return one
    End If
End Function