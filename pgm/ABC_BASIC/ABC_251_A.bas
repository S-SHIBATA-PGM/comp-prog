' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As String S
Input S
Const six = 6
Dim As String SixCharacters = ""
For i As Integer = 1 To six \ Len(S)
    SixCharacters += S
Next
Print SixCharacters
End 0