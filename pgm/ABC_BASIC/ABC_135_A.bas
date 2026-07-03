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
Const IMPOSSIBLE As String = "IMPOSSIBLE"
Const two As UInteger = 2U
Const zero As UInteger = 0U
If (A + B) Mod two = zero Then
  Print Str((A + B) / two)
Else
  Print IMPOSSIBLE
End If
End 0