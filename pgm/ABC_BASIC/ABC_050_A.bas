' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String str1
Input str1
Const plus As String = "+"
Const One As Integer = 1
Dim As Integer idx1 = InStr(str1, Space(One))
Dim As Integer idx2 = InStr(idx1 + one, str1, Space(One))
Dim As Integer A = ValInt(Left(str1, idx1 - one))
Dim As String op = Mid(str1, idx1 + one, idx2 - idx1 - one)
Dim As Integer B = ValInt(Mid(str1, idx2 + one))
If op = plus Then
    Print Str(A + B)
Else
    Print Str(A - B)
End If
End 0