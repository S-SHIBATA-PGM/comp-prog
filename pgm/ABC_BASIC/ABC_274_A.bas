' #include "crt/math.bi"
' #include once "pcre.bi"
#include "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Function Round(ByVal value As Double, ByVal place As Integer) As Double
    Dim As Double factor = 10 ^ place
    Dim As Double result = (value * factor + 0.5) / factor
    Return result
End Function

Dim As Double A, B
Input A, B
Const four As Integer = 4&
Print Format(Round(B / A, four), "0.000")
End 0