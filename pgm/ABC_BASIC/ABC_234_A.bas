' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Declare Function f(t As Integer) As Double

Dim As Integer t
Input t
Print Str(f(f(f(t) + t) + f(f(t))))
End 0

Function f(t As Integer) As Double
    Const two As Integer = 2
    Const three As Integer = 3
    Return (t ^ two) + (two * t) + three
End Function