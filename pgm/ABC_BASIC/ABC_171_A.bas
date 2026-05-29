' #include once "crt.bi"
#include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String alpha
Input alpha
Const upperA As String = "A"
Const lowerA As String = "a"
Const zero As UInteger = 0U
If isupper(alpha[zero]) Then
  Print upperA
Else
  Print lowerA
End If
End 0