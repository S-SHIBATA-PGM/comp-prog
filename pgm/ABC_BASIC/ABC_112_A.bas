' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger N
Input N
Const HelloWorld As String = "Hello World"
Const one As UInteger = 1U
If N = one Then
    Print HelloWorld
Else
    Dim As UInteger A, B
    Input A
    Input B
    Print A + B
End If
End 0