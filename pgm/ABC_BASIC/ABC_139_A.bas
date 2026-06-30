' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String S, T
Input S, T
Const one As UInteger = 1U
Const zero As UInteger = 0U
Dim length As UInteger = Len(S)
Dim cnt As UInteger = zero
For i As Integer = zero To length - one
    If S[i] = T[i] Then
        cnt += 1
    End If
Next
Print cnt
End 0