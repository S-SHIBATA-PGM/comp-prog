' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As Integer a, b
Input a, b
Const Yes As String = "Yes"
Const No As String = "No"
Const one As Integer = 1&
Const two As Integer = 2&
If a * two = b OrElse a * two + one = b Then
    Print Yes
Else
    Print No
EndIf
End 0