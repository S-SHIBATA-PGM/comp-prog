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
Const zero As UInteger = 0U
Dim As UInteger length = Len(N)
Dim As Boolean isPalindrome = True
For i As Integer = zero To (length \ two) - one
    If N[i] <> N[length - one - i] Then
        isPalindrome = False
        Exit For
    End If
Next
If isPalindrome Then
    Print Yes
Else
    Print No
End If
End 0