' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger A, B
Input A, B
Const Yay As String = "Yay!"
Const no As String = ":("
Const eight As UInteger = 8U
If A <= eight AndAlso B <= eight Then
  Print Yay
Else
  Print no
End If
End 0