' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As String S
Input S
Const one As Integer = 1&
Const two As Integer = 2&
Const zero As Integer = 0&
Dim As UByte keep = S[zero]
For i As Integer = zero To Len(S) - two
    S[i] = S[i + 1]
Next
S[Len(S) - one] = keep
Print S
End 0