' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger A, B, C
Input A, B, C
Const Yes As String = "Yes"
Const No As String = "No"
Const one As Uinteger = 1U
Const zero As Uinteger = 0U
Dim As Integer pair = zero
If A = B Then pair += one
If B = C Then pair += one
If C = A Then pair += one
Select Case pair
    Case one
        Print Yes
    Case Else
        Print No
End Select
End 0