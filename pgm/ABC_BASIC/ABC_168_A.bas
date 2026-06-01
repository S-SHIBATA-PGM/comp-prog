' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a

Dim As UInteger N
Input N
Const hon As String = "hon"
Const pon As String = "pon"
Const bon As String = "bon"
Dim one As UInteger = 1U
Dim two As UInteger = 2U
Dim four As UInteger = 4U
Dim five As UInteger = 5U
Dim six As UInteger = 6U
Dim seven As UInteger = 7U
Dim eight As UInteger = 8U
Dim nine As UInteger = 9U
Dim ten As UInteger = 10U
Dim zero As UInteger = 0U
Dim As UInteger onesDigit = CUInt(N Mod ten)
Select Case onesDigit
    Case two, four, five, seven, nine
        Print hon
    Case zero, one, six, eight
        Print pon
    Case Else
        Print bon
End Select
End 0