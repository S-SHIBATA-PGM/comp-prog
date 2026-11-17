' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As UInteger M, D
Input M, D
Const YES As String = "YES"
Const NO As String = "NO"
Const zero As UInteger = 0U
If M Mod D = zero Then
    Print Yes
Else
    Print No
End If
End 0