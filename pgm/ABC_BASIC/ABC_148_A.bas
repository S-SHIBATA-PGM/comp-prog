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
Input A
Input B
Const one As Uinteger = 1U
Const two As Uinteger = 2U
Const three As Uinteger = 3U
Const zero As Uinteger = 0U
Dim As Integer choice(one To three) = {one, two, three}
choice(A) = zero
choice(B) = zero
Dim As UInteger wrong = zero
For i As Integer = LBound(choice) To UBound(choice)
    wrong += choice(i)
Next
Print wrong
End 0