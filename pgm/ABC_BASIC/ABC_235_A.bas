' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As String abc
Input abc
Const one As Integer = 1
Const two As Integer = 2
Const three As Integer = 3
Const zero As Integer = 0
Dim As String bca = Space(three)
bca[zero] = abc[one] 
bca[one] = abc[two] 
bca[two] = abc[zero]
Dim As String cab = Space(three)
cab[zero] = abc[two] 
cab[one] = abc[zero] 
cab[two] = abc[one]
Print Str(ValInt(abc) + ValInt(bca) + ValInt(cab))
End 0