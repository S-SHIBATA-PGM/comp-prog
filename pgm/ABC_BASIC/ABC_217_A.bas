' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As String str1
Input str1
Const Yes As String = "Yes"
Const No As String = "No"
Const one As Integer = 1&
Dim As String S, T
S = Left(str1, Instr(str1, Space(one)) - one)
T = Mid(str1, Instr(str1, Space(one)) + one)
If S < T Then
    Print Yes
Else
    Print No
End If
End 0