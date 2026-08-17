' #include once "crt.bi"
' #include once "crt/ctype.bi"
#include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String S
Input S
Const Yes As String = "Yes"
Const No  As String = "No"
Const one As UInteger = 1U
Const three As UInteger = 3U
Const zero As UInteger = 0U
Dim As Boolean isUsed(zero To UCHAR_MAX)
Dim As UInteger cnt = zero
For i As Integer = zero To Len(S) - one
    Dim As UByte b = S[i]
    If Not isUsed(b) Then
        isUsed(b) = Not isUsed(b)
        cnt += one
    End If
Next
If cnt = three Then
    Print Yes
Else
    Print No
End If
End 0