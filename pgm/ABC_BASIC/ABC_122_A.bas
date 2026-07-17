' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String b
Input b
Const A As String = "A"
Const T As String = "T"
Const G As String = "G"
Const C As String = "C"
Const blank As String = ""
Dim basePair As String = blank
Select Case b
  Case A
      basePair = T
  Case T
      basePair = A
  Case G
      basePair = C
  Case C
      basePair = G
End Select
Print basePair
End 0