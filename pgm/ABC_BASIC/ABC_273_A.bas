' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Function f(ByVal k As Integer) As Integer
    If k = 0 Then
        Return 1
    Else
        Return k * f(k - 1)
    End If
End Function

Dim As Integer N
Input N
Print Str(f(N))
End 0