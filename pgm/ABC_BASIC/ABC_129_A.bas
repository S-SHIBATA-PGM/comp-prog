' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger P, Q, R
Input P, Q, R
Const one As UInteger = 1U
Const two As UInteger = 2U
Const zero As UInteger = 0U
Dim As UInteger PQR(0 To 2) = {P, Q, R}
For i As Integer = LBound(PQR) To UBound(PQR)
    For j As Integer = LBound(PQR) To UBound(PQR) - i - one
        If PQR(j) > PQR(j + 1) Then
            Swap PQR(j), PQR(j + 1)
        End If
    Next
Next
Print PQR(zero) + PQR(one)
End 0