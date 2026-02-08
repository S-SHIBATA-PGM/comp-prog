' #include "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer Y
Input Y
Const two As Integer = 2&
Const four As Integer = 4&
Dim remainder As Integer = Y Mod four
Dim year As Integer = Y - remainder + (four - two)
If remainder > two Then
    year += four
End If
Print Str(year)
End 0