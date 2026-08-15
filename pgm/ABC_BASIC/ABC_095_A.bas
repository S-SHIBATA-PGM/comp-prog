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
Const o As UByte = Asc("o")
Const one As UInteger = 1U
Const hundred As UInteger = 100U
Const sevenHundred As UInteger = 700U
Const zero As UInteger = 0U
Dim length As UInteger = Len(S)
Dim price As UInteger = sevenHundred
For i As UInteger = zero To length - one
    If S[i] = o Then
        price += hundred
    End If
Next
Print price
End 0