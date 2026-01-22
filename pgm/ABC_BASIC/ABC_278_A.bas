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

Dim As Integer N, K
Input N, K
Dim As String ln
Input ln
Const blank As String = ""
Const sp As String = " "
Const one As Integer = 1&
Const zero As Integer = 0&
Dim As Integer A(N - one)
splitToInteger(ln, A(), sp)
If K < N Then
    For i As Integer = zero To (N - one) - K
        A(i) = A(i + K)
    Next
End If
Dim As Integer start = IIf(N - K < zero, zero, N - K)
For i As Integer = start To N - one
    A(i) = zero
Next
Dim As String s = blank
For i As Integer = zero To N - one
    Print s;
    Print Str(A(i));
    s = sp
Next
Print
End 0