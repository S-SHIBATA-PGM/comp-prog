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
Const Yes As String = "Yes"
Const No As String = "No"
Const sp As String = " "
Const one As Integer = 1&
Const zero As Integer = 0&
Dim As Integer A()
splitToInteger(ln, A(), sp)
For i As Integer = LBound(A) To UBound(A)
    For j As Integer = i + one To UBound(A)
        If A(i) > A(j) Then
            Swap A(i), A(j)
        End If
    Next
Next
Dim As Boolean exitFlg = False
For i As Integer = LBound(A) + one To UBound(A) - 1
    If exitFlg Then
        Exit For
    End If
    If A(i + one) - A(i) <> A(one) - A(zero) Then
        exitFlg = True
    End If
Next
If exitFlg Then
    Print No
Else
    Print Yes
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