' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer N, K, A
Input N, K, A
Const one As Integer = 1&
If (K + A - one) Mod N Then
    Print Str((K + A - one) Mod N)
Else
    Print Str(N)
End If
End 0