' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) iif((a) < (b), (a), (b))
#define Max(a, b) iif((a) > (b), (a), (b))

Dim As String ln
Input ln
Const one As Integer = 1&
Const zero As Integer = 0&
Dim As Integer ps = InStr(ln, Space(one))
Dim As String A, B
A = Left(ln, ps - one)
B = Mid(ln, ps + one)
Dim As Integer numA, numB
For i As Integer = zero To Len(A) - one
    numA += A[i] - Asc(Str(zero))
    numB += B[i] - Asc(Str(zero))
Next
Print Str(Max(numA, numB))
End 0