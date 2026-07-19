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
Const boundaryDate As String = "2019/04/30"
Const Heisei As String = "Heisei"
Const TBD As String = "TBD"
If S <= boundaryDate Then
    Print Heisei
Else
    Print TBD
End If
End 0