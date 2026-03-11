' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer A, B, C, D
Input A, B, C, D
Const Takahashi As String = "Takahashi"
Const Aoki As String = "Aoki"
If A < C Then
    Print Takahashi
ElseIf A > C Then
    Print Aoki
ElseIf B <= D Then
    Print Takahashi
Else
    Print Aoki
End If
End 0