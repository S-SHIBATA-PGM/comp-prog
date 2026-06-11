' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a

Dim As String S
Input S
Const Yes As String = "Yes"
Const No As String = "No"
Const one As Uinteger = 1U
Const zero As Uinteger = 0U
Dim As Boolean isSame = True
Dim As UByte first = S[zero]
For i As Integer = one To Len(S) - one
    If S[i] <> first Then
        isSame = False
        Exit For
    End If
Next
If isSame Then
    Print No
Else
    Print Yes
End If
End 0