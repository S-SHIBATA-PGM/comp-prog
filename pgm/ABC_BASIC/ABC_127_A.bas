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
Const two As UInteger = 2U
Const five As UInteger = 5U
Const twelve As UInteger = 12U
Const zero As UInteger = 0U
If A <= five Then
    Print zero
ElseIf A <= twelve Then
    Print Str(B / two)
Else
    Print B
End If
End 0