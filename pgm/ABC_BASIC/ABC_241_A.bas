' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Const nine As Integer = 9&
Const zero As Integer = 0&
Dim As Integer a(nine)
For i As Integer = LBound(a) To UBound(a)
    Input a(i)
Next
Print Str(a(a(a(zero))))
End 0