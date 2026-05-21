' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String S
Input S
Const smallS As String = "s"
Const es As String = "es"
Const one As Integer = 1&
Const zero As Integer = 0&
Dim As Integer lnEs = len(es)
Dim As Integer lnS = len(S)
Dim As Integer lnSmallS = len(smallS)
Dim As String buffer = Space(lnS + lnEs)
For i As Integer = zero To lnS - one
    buffer[i] = S[i]
Next
Dim As Integer curLn = IIf(S[lnS - one] = Asc(smallS), lnEs, lnSmallS)
Dim As String curStr = IIf(S[lnS - one] = Asc(smallS), es, smallS)
Mid(buffer, lnS + one, curLn) = curStr
Print(Left(buffer, lnS + curLn))
End 0