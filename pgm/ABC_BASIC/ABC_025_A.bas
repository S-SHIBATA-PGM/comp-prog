' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String S
Input S
Dim As UInteger N
Input N
Const one As UInteger = 1U
Dim As UInteger strLen = Len(S)
Dim As UInteger idx1 = (N - one) \ strLen
Dim As UInteger idx2 = (N - one) Mod strLen
Dim As String char1 = Mid(S, idx1 + one, one)
Dim As String char2 = Mid(S, idx2 + one, one)
Print char1 & char2
End 0