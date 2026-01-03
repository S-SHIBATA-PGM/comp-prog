'#include "crt/math.bi"
'#include once "pcre.bi"

'#define min(a, b) iif((a) < (b), (a), (b))
'#define max(a, b) iif((a) > (b), (a), (b))

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

Dim As Integer N, D
Input N, D
Dim As String ln
Input ln
Const sp As String = " "
Const one As Integer = 1&
Const no As Integer = -1&
Dim As Integer T()
splitToInteger(ln, T(), sp)
Dim As Integer click = no
For i As Integer = LBound(T) To UBound(T) - one
    If T(i + one) - T(i) <= D Then
        click = T(i + one)
        Exit For
    End If
Next
print Str(click)
End 0