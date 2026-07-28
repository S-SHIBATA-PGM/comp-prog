' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String n
Input n
Const sOne As String = "1"
Const sNine As String = "9"
Const bOne As UByte = Asc(sOne)
Const bNine As UByte = Asc(sNine)
Const zero As UInteger = 0U
Dim length As Integer = Len(n)
For i As Integer = zero To length
    If n[i] = bOne Then
        n[i] = bNine
    Else
        n[i] = bOne
    End If
Next
Print n
End 0