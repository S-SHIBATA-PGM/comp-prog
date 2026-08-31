' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String N
Input N
Const Yes As String = "Yes"
Const No As String = "No"
Const one As UInteger = 1U
Const two As UInteger = 2U
Const three As UInteger = 3U
Const zero As UInteger = 0U
Dim As Boolean hasTriple = False
Dim As UInteger length = Len(N)
For i As Integer = zero To length - three
    Dim As UByte c1 = N[i]
    Dim As UByte c2 = N[i + one]
    Dim As UByte c3 = N[i + two]
    If c1 = c2 AndAlso c2 = c3 Then
        hasTriple = True
        Exit For
    End If
Next
If hasTriple Then
    Print Yes
Else
    Print No
End If
End 0