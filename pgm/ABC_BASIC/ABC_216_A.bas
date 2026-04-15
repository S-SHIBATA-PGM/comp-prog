' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As String S
Input S
Const plus As String = "+"
Const minus As String = "-"
Const dot As String = "."
Const one As Integer = 1&
Const two As Integer = 2&
Const six As Integer = 6&
Dim X As Integer = Val(Left(S, Instr(S, dot) - one))
Dim Y As Integer = Val(Mid(S, Instr(S, dot) + one))
Print Str(X);
If Y <= two Then
    Print minus;
Elseif Y > six Then
    Print plus;
End If
Print
End 0