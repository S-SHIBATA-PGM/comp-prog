' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger A, B, C, D
Input A, B, C, D
Const TAKAHASHI As String = "TAKAHASHI"
Const AOKI As String = "AOKI"
Const sDRAW As String = "DRAW"
If C * B > A * D Then
    Print TAKAHASHI
ElseIf C * B < A * D Then
    Print AOKI
Else
    Print sDRAW
End If
End 0