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
Const Yes As String = "Yes"
Const No As String = "No"
Const sSeven As String = "7"
If Instr(N, sSeven) > 0 Then
  Print Yes
Else
  Print No
End If
End 0