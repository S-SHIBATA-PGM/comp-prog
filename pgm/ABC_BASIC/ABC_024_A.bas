' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger A, B, C, K
Input A, B, C, K
Dim As UInteger S, T
Input S, T
If S + T >= K Then
    Print S * A + T * B - C * (S + T)
Else
    Print S * A + T * B
End If
End 0