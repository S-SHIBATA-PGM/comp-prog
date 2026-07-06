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
Const Yes As String = "Yes"
Const No As String = "No"
Const one As UInteger = 1U
Const two As UInteger = 2U
Const twoHundredFiftyFive As UInteger = 255U
Const zero As UInteger = 0U
Dim As UInteger cnt(zero To twoHundredFiftyFive)
Dim As Boolean flg = True
Dim As UInteger length = Len(S)
For i As Integer = zero To length - one
    cnt(S[i]) += one
Next
For i As Integer = LBound(cnt) To UBound(cnt)
    If cnt(i) > zero AndAlso cnt(i) <> two Then
        flg = False
        Exit For
    End If
Next
If flg Then
    Print Yes
Else
    Print No
End If
End 0