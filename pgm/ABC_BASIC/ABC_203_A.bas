' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Declare Sub splitToInteger(text As String, array() As Integer, delim As String)

Dim As String ln
Input ln
Const blank As String = ""
Const sp As String = " "
Const one As Integer = 1&
Const two As Integer = 2&
Const three As Integer = 3&
Const zero As Integer = 0&
Dim As Integer abc(three - one)
splitToInteger(ln, abc(), sp)
Dim As Boolean exitFlg = False
For i As Integer = LBound(abc) To UBound(abc)
    If exitFlg Then
        Exit For
    End If
    If abc((i + one) Mod three) = abc((i + two) Mod three) Then
        exitFlg = True
        Print Str(abc(i))
    End If
Next
If Not exitFlg Then
    Print Str(zero)
End If
End 0

Sub splitToInteger(text As String, array() As Integer, delim As String)
    Dim As Integer n = 0, pos1 = 1, pos2 = 0
    text = Trim(text)
    If Len(text) = 0 Then Exit Sub
    Do
        pos2 = InStr(pos1, text, delim)
        ReDim Preserve array(0 To n)
        If pos2 > 0 Then
            array(n) = ValInt(Mid(text, pos1, pos2 - pos1))
            pos1 = pos2 + 1
            n += 1
        Else
            array(n) = ValInt(Mid(text, pos1))
            Exit Do
        End If
    Loop
End Sub