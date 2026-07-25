' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger D
Input D
Const Christmas As String = "Christmas"
Const ChristmasEve As String = "Christmas Eve"
Const ChristmasEveEve As String = "Christmas Eve Eve"
Const ChristmasEveEveEve As String = "Christmas Eve Eve Eve"
Const twentyThird As UInteger = 23U
Const twentyFourth As UInteger = 24U
Const twentyFifth As UInteger = 25U
If D = twentyFifth Then
    Print Christmas
ElseIf D = twentyFourth Then
    Print ChristmasEve
ElseIf D = twentyThird Then
    Print ChristmasEveEve
Else
    Print ChristmasEveEveEve
End If
End 0