' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

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

Dim As Integer N, X
Input N, X
Dim As String ln
Input ln
Const sp As String = " "
Const one As Integer = 1&
Const zero As Integer = 0&
Dim As Integer P(N - one)
splitToInteger(ln, P(), sp)
Dim As Integer k = -one
For i As Integer = zero To N - 1
    If P(i) = X Then
        k = i + one
        Exit For
    End If
Next
Print Str(k)
End 0