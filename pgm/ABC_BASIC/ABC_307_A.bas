Sub splitToInteger(text As String, array() As Integer, delim As String)
    Dim As Integer n = 0, pos1 = 1, pos2 = 0
    text = Trim(text)
    If Len(text) = 0 Then Exit Sub
    Do
        pos2 = InStr(pos1, text, delim)
        ReDim Preserve array(0 To n)
        If pos2 > 0 Then
            array(n) = Val(Mid(text, pos1, pos2 - pos1))
            pos1 = pos2 + 1
            n += 1
        Else
            array(n) = Val(Mid(text, pos1))
            Exit Do
        End If
    Loop
End Sub

Dim As Integer N
Input N
Dim As String ln
Dim As Integer A()
Input ln
splitToInteger(ln, A(), " ")
Const one As Integer = 1
Const seven As Integer = 7
Const zero As Integer = 0
Const blank As String = ""
Const sp As String = " "
Dim As String s = blank
Dim As Integer sum = 0
Dim As Integer j = 0
Dim As Integer nxt = 0
For i As Integer = zero To N - 1
    nxt = j + seven
    For j = j To nxt - 1
        sum += A(j)
    Next
    Print s;
    Print Str(sum);
    s = sp
    sum = zero
Next
Print
End 0