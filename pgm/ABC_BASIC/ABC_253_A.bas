' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Const Yes As String = "Yes"
Const No As String = "No"
Const one As Integer = 1
Const two As Integer = 2
Const three As Integer = 3
Const zero As Integer = 0
Dim As Integer abc(zero To two)
Input abc(zero), abc(one), abc(two)
Dim As Integer b = abc(one)
For i As Integer = zero To one
    For j As Integer = i + one To two
        If abc(i) > abc(j) Then
            Swap abc(i), abc(j)
        End If
    Next
Next
If b = abc(one) Then
    Print Yes
Else
    Print No
End If
End 0