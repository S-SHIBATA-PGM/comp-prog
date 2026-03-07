' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

#define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer A, B, C, D, E, F, X
Input A, B, C, D, E, F, X
Const Takahashi As String = "Takahashi"
Const Aoki As String = "Aoki"
Const Dw As String = "Draw"
Dim takahashi_distance As Integer = _
    B * A * (X \ (A + C)) + B * Min(A, X Mod (A + C))
Dim aoki_distance As Integer = _
    E * D * (X \ (D + F)) + E * Min(D, X Mod (D + F))
If takahashi_distance > aoki_distance Then
    Print Takahashi
ElseIf takahashi_distance < aoki_distance Then
    Print Aoki
Else
    Print Dw
End If
End 0