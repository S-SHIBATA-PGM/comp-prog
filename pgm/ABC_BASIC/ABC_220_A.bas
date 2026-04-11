' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer A, B, C
Input A, B, C
Const no As Integer = -1&
Const zero As Integer = 0&
Dim multiple As Integer = A + C - A Mod C
If A Mod C = zero Then
    Print Str(A)
ElseIf multiple <= B Then
    Print Str(multiple)
Else
    Print Str(no)
End If
End 0