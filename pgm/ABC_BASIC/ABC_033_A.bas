' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String N
Input N
Const SAME As String = "SAME"
Const DIFFERENT As String = "DIFFERENT"
Const one As UInteger = 1
Const zero As UInteger = 0
Dim As Boolean isSame = True
Dim As UInteger strLen = Len(N)
Dim As UByte firstChar = N[zero]
For i As UInteger = one To strLen - one
    If N[i] <> firstChar Then
        isSame = False
        Exit For
    End If
Next i
If isSame Then
    Print SAME
Else
    Print DIFFERENT
End If
End 0