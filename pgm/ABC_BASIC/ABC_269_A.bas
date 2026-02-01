' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer a, b, c, d
Input a, b, c, d
Const Takahashi As String = "Takahashi"
Print Str((a + b) * (c - d))
Print Takahashi
End 0