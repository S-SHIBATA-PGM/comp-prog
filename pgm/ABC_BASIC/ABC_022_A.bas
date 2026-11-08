' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger N, S, T
Input N, S, T
Dim As UInteger W
Input W
Const one As UInteger = 1U
Const zero As UInteger = 0U
ReDim As UInteger weight(N - one)
weight(zero) = W
Dim As UInteger prev = W
For i As UInteger = one To N - one
    Dim As Integer A
    Input A
    prev = prev + A
    weight(i) = prev
Next i
Dim As UInteger cnt = zero
For i As UInteger = LBound(weight) To UBound(weight)
    If weight(i) >= S And weight(i) <= T Then
        cnt += one
    End If
Next i
Print cnt
End 0