' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
#include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger M
Input M
Const yyyy As String = "yyyy"
Const h As String = "h"
Const y1 As UInteger = 1U
Const M1 As UInteger = 1U
Const M12 As UInteger = 12U
Const d1 As UInteger = 1U
Const d30 As UInteger = 30U
Const h0 As UInteger = 0U
Const m0 As UInteger = 0U
Const s0 As UInteger = 0U
Dim As UInteger currentYear = Val(Format(Now(), yyyy))
Dim As Double thisYear = DateSerial(currentYear, M12, d30) + TimeSerial(M, m0, s0)
Dim As Double nextYear = DateSerial(currentYear + y1, M1, d1) + TimeSerial(h0, m0, s0)
Dim As UInteger duration = DateDiff(h, thisYear, nextYear)
Print duration
End 0