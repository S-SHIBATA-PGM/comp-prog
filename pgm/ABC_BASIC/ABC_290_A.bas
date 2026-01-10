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

Dim As Integer N, M
Input N, M
Dim As String ln
Input ln
Const blank As String = ""
Const sp As String = " "
Const one As Integer = 1&
Dim As Integer A()
splitToInteger(ln, A(), sp)
Input ln
Dim As Integer B()
splitToInteger(ln, B(), sp)
Dim As Integer sum = 0&
For i As Integer = LBound(B) To UBound(B)
    sum += A(B(i) - one)
Next
Print Str(sum)
End 0