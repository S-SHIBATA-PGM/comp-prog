' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer N
Input N
Dim As String S
Input S
Const Yes As String = "Yes"
Const No As String = "No"
Const o As String = "o"
Const one As Integer = 1&
If Chr(S[N - one]) = o Then
    Print Yes
Else
    Print No
End If
End 0