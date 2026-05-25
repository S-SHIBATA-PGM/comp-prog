' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
#define Max(a, b) iif((a) > (b), (a), (b))

Dim As String S
Input S
Dim As UByte R = Asc("R")
Const one As Integer = 1U
Const zero As Integer = 0U
Dim As Integer num, cnt
num = zero
cnt = zero
For i As Integer = zero To Len(S)
    If S[i] = R Then
        num += one
    Else
        cnt = Max(cnt, num)
        num = zero
    End If
Next
Print Str(Max(cnt, num))
End 0