' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger X
Input X
Const YES As String = "YES"
Const NO As String = "NO"
Const two As UInteger = 2U
Const three As UInteger = 3U
Const five As UInteger = 5U
Const seven As UInteger = 7U
Const zero As UInteger = 0U
Dim As UInteger shichigosan(...) = {seven, five, three}
Dim As Boolean containX = False
For i As Integer = LBound(shichigosan) To UBound(shichigosan)
    If shichigosan(i) = X Then
        containX = True
        Exit For
    End If
Next
If containX Then
    Print YES
Else
    Print NO
End If
End 0