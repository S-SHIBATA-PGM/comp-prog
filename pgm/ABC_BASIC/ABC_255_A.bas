' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer R, C
Input R, C
Const one As Integer = 1&
Const two As Integer = 2&
Const zero As Integer = 0&
Dim As Integer mat(zero To one, zero To one)
For i As Integer = LBound(mat) To UBound(mat)
    Input mat(i, zero), mat(i, one)
Next
Print Str(mat(R - one, C - one))
End 0