' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Const one As Integer = 1
Const two As Integer = 2
Const zero As Integer = 0
Dim As UInteger abc(two)
Input abc(zero), abc(one), abc(two)
For i As Integer = zero To two
    For j As Integer = zero To two - i - one
        If abc(j) > abc(j + 1) Then
            Swap abc(j), abc(j + 1)
        End If
    Next j
Next i
Print abc(one)
End 0