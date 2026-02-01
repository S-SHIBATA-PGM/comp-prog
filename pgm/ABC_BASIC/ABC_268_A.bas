' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Sub SplitToInteger(text As String, array() As Integer, delim As String)
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

Dim As String ln
Input ln
Const sp As String = " "
Const one As Integer = 1&
Const zero As Integer = 0&
Dim As Integer ABCDE()
SplitToInteger(ln, ABCDE(), sp)
Dim As Integer cnt = 0
For i As Integer = LBound(ABCDE) To UBound(ABCDE)
    Dim As Integer isDup = zero
    For j As Integer = zero To i - one
        If ABCDE(i) = ABCDE(j) Then
            isDup = one
            Exit For
        End If
    Next
    If isDup = 0 Then
        cnt += 1
    End If
Next
Print Str(cnt)
End 0