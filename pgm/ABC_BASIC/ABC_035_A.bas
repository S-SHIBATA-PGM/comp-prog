' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger W, H
Input W, H
Const three As UInteger = 3U
Const four As UInteger = 4U
Const aspectRatio43 As String = "4:3"
Const aspectRatio169 As String = "16:9"
If W * three = H * four Then
    Print aspectRatio43
Else
    Print aspectRatio169
End If
End 0