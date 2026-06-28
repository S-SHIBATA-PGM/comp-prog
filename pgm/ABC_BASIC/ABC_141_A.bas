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
Const one As UInteger = 1U
Dim As String Weather(...) = {"Sunny", "Cloudy", "Rainy"}
Dim As UInteger idx = -one
For i As Integer = LBound(Weather) To UBound(Weather)
    If Weather(i) = S Then
        idx = i
        Exit For
    End If
Next
Print Weather((idx + one) Mod (UBound(Weather) - LBound(Weather) + 1))
End 0