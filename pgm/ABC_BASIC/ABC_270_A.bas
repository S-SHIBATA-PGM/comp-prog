' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Const one As Integer = 1&
Const two As Integer = 2&
Const three As Integer = 3&
Const four As Integer = 4&
Const five As Integer = 5&
Const six As Integer = 6&
Const seven As Integer = 7&
Const zero As Integer = 0&

Sub CheckSolved(arr() As Integer, p As Integer)
    If p = one Then
        arr(one) += one
    ElseIf p = two Then
        arr(two) += one
    ElseIf p = three Then
        arr(one) += one
        arr(two) += one
    ElseIf p = four Then
        arr(three) += one
    ElseIf p = five Then
        arr(one) += one
        arr(three) += one
    ElseIf p = six Then
        arr(two) += one
        arr(three) += one
    ElseIf p = seven Then
        arr(one) += one
        arr(two) += one
        arr(three) += one
    End If
End Sub

Dim As Integer A, B
Input A, B
Dim As Integer AB(three)
CheckSolved(AB(), A)
CheckSolved(AB(), B)
Dim As Integer p = zero
For i As Integer = LBound(AB) To UBound(AB)
    If zero < AB(i) Then
        p += i
        If i = three Then
            p += one
        End If
    End If
Next
Print Str(p)
End 0