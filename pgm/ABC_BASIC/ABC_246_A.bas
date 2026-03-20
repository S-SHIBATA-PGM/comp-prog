' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Const one As Integer = 1&
Const two As Integer = 2&
Const three As Integer = 3&
Const zero As Integer = 0&
Dim As Integer x(three), y(three)
For i As Integer = LBound(x) To UBound(x)
    Input x(i), y(i)
Next
Dim pointX As Integer = x(zero)
Dim pointY As Integer = y(zero)
If pointX = x(two) Then
    pointX = x(one)
ElseIf pointX = x(one) Then
    pointX = x(two)
End If
If pointY = y(two) Then
    pointY = y(one)
ElseIf pointY = y(one) Then
    pointY = y(two)
End If
Print Str(pointX) & Space(one) & Str(pointY)
End 0