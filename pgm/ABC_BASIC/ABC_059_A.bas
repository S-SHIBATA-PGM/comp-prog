' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Declare Sub SplitToString(text As String, array() As String, delim As String)

Dim As String ln
Input ln
Const sp As String = " "
Const one As UInteger = 1U
Const two As UInteger = 2U
Const zero As UInteger = 0U
Dim As String s()
splitToString(ln, s(), sp)
Print UCase(Left(s(zero), one) & Left(s(one), one) & Left(s(two), one))
End 0

Sub splitToString(text As String, array() As String, delim As String)
    Dim As Integer n = 0, pos1 = 1, pos2 = 0
    text = Trim(text)
    If Len(text) = 0 Then Exit Sub
    Do
        pos2 = InStr(pos1, text, delim)
        ReDim Preserve array(0 To n)
        If pos2 > 0 Then
            array(n) = Mid(text, pos1, pos2 - pos1)
            pos1 = pos2 + 1
            n += 1
        Else
            array(n) = Mid(text, pos1)
            Exit Do
        End If
    Loop
End Sub