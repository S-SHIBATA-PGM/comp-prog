' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger a
Input a
Dim As String s
Input s
Const red As String = "red"
Const threeThousandTwoHundred As UInteger = 3200U
If a >= threeThousandTwoHundred Then
    Print s
Else
    Print red
End If
End 0