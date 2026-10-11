' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String s
Open Cons For Input As #1
Line Input #1, s
Close #1
Const uComma As UByte = Asc(",")
Const uSpace As UByte = Asc(" ")
Const one As UInteger = 1
Const zero As UInteger = 0
For i As Integer = zero To Len(s) - one
    If s[i] = uComma Then
        s[i] = uSpace
    End If
Next i
Print s
End 0