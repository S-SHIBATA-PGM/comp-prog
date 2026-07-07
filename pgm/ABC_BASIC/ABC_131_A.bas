' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String S
Input S
Const Bad As String = "Bad"
Const Good As String = "Good"
Const one As UInteger = 1U
Const two As UInteger = 2U
Const zero As UInteger = 0U
Dim As UInteger length = Len(S)
Dim As Boolean isBad = False
For i As Integer = zero To length - two
    If S[i] = S[i + one] Then
        isBad = True
        Exit For
    End If
Next
If isBad Then
    Print Bad
Else
    Print Good
End If
End 0