' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As String S
Input S
Const two As Integer = 2&
Const zero As Integer = 0&
Const cZero As Ubyte = Asc(Str(zero))
Print Str((S[zero] - cZero) * (S[two] - cZero))
End 0