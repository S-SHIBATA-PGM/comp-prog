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
Const one As UInteger = 1U
Const two As UInteger = 2U
Const zero As UInteger = 0U
Dim As Integer abc()
SplitToInteger(ln, abc(), Space(one))
Dim As UInteger len_val = UBound(abc) + one
For i As UInteger = zero To len_val - two
    For j As Integer = i + one To len_val - one
        If abc(i) > abc(j) Then
            Dim As Integer keep = abc(i)
            abc(i) = abc(j)
            abc(j) = keep
        End If
    Next j
Next i
Dim As UInteger cnt = one
For i As UInteger = zero To len_val - two
    If abc(i) <> abc(i + one) Then
        cnt += one
    End If
Next i
Print cnt
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