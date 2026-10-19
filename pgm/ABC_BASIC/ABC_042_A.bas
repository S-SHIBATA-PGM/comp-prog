' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Declare Sub SplitToInteger(text As String, array() As Integer, delim As String)

Dim As String ln
Input ln
Const YES As String = "YES"
Const NO As String = "NO"
Const sp As String = " "
Const one As UInteger = 1U
Const two As UInteger = 2U
Const go As UInteger = 5U
Const shichi As UInteger = 7U
Const zero As UInteger = 0U
Dim As Integer abc()
SplitToInteger(ln, abc(), sp)
For i As Integer = zero To one
    For j As Integer = i + one To two
        If abc(i) > abc(j) Then
            Dim As Integer keep = abc(i)
            abc(i) = abc(j)
            abc(j) = keep
        End If
    Next j
Next i
If abc(zero) = go And abc(one) = go And abc(two) = shichi Then
    Print Yes
Else
    Print No
End If
End 0

Sub SplitToInteger(text As String, array() As Integer, delim As String)
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