'#include "crt/math.bi"
'#include once "pcre.bi"

'#define min(a, b) iif((a) < (b), (a), (b))
'#define max(a, b) iif((a) > (b), (a), (b))

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

Dim As Integer N
Input N
Dim As String ln
Input ln
Const sAnd As String = "and"
Const sNot As String = "not"
Const sThat As String = "that"
Const sThe As String = "the"
Const sYou As String = "you"
Const Yes As String = "Yes"
Const No As String = "No"
Const sp As String = " "
Const four As Integer = 4
Const zero As Integer = 0
Dim As String W()
splitToString(ln, W(), sp)
Dim As String keyword(zero To four) => { _
    sAnd, _
    sNot, _
    sThat, _
    sThe, _
    sYou _
}
Dim As Boolean hasKeyword = False
For i As Integer = LBound(W) To UBound(W)
    If hasKeyword Then
        Exit For
    End If
    For j As Integer = LBound(keyword) To UBound(keyword)
        If hasKeyword Then
            Exit For
        End If
        If W(i) = keyword(j) Then
            hasKeyword = True
        End If
    Next
Next
If hasKeyword Then
    Print Yes
Else
    Print No
End If
End 0