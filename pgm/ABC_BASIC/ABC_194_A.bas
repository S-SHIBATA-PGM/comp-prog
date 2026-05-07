' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer A, B
Input A, B
Const solid15 As Integer = 15&
Const solid10 As Integer = 10&
Const solid3 As Integer = 3&
Const fat8 As Integer = 8&
Const fat3 As Integer = 3&
Const one As Integer = 1&
Const two As Integer = 2&
Const three As Integer = 3&
Const four As Integer = 4&
Dim AB As Integer = A + B
If solid15 <= AB AndAlso fat8 <= B Then
    Print Str(one)
ElseIf solid10 <= AB AndAlso fat3 <= B Then
    Print Str(two)
ElseIf solid3 <= AB Then
    Print Str(three)
Else
    Print Str(four)
End If
End 0