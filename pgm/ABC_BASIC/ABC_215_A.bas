' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As String S
Open Cons For Input As #1
Line Input #1, S
Close #1
Const hello As String = "Hello,World!"
Const AC As String = "AC"
Const WA As String = "WA"
If S = hello Then
    Print AC
Else
    Print WA
End If
End 0