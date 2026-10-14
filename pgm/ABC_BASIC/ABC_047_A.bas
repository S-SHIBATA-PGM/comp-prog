' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Const Yes As String = "Yes"
Const No As String = "No"
Const one As UInteger = 1U
Const two As UInteger = 2U
Const zero As UInteger = 0U
Dim As UInteger abc(zero To two)
Input abc(zero), abc(one), abc(two)
For i As Integer = zero To one
    For j As Integer = i + one To two
        If abc(i) > abc(j) Then
            Dim As UInteger keep = abc(i)
            abc(i) = abc(j)
            abc(j) = keep
        End If
    Next j
Next i
If abc(zero) + abc(one) = abc(two) Then
    Print Yes
Else
    Print No
End If
End 0