' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer A, B
Input A, B
Const unity As Integer = 1&
Const oneHundredPercent As Integer = 100&
Print Str((unity - B / A) * oneHundredPercent)
End 0