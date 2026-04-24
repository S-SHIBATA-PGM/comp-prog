' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Const one As Integer = 1&
Const two As Integer = 2&
Const zero As Integer = 0&
Dim As Integer ABC(two)
Input ABC(zero), ABC(one), ABC(two)
For i As Integer = LBound(ABC) To UBound(ABC)
    For j As Integer = i + one To UBound(ABC)
        If ABC(i) < ABC(j) Then
            Swap ABC(i), ABC(j)
        End If
    Next
Next
Print Str(ABC(zero) + ABC(one))
End 0