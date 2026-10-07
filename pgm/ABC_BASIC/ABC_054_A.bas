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
Const Alice As String = "Alice"
Const Bob As String = "Bob"
Const sDraw As String = "Draw"
Const one As UInteger = 1U
Const fourteen As UInteger = 14U
A = IIf(A = one, fourteen, A)
B = IIf(B = one, fourteen, B)
If A > B Then
    Print Alice
ElseIf A < B Then
    Print Bob
Else
    Print sDraw
End If
End 0