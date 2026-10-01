' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Declare Sub SplitToString(text As String, array() As String, delim As String)

Dim As String ln
Input ln
Const YES As String = "YES"
Const NO As String = "NO"
Const sp As String = " "
Const one As UInteger = 1U
Const two As UInteger = 2U
Const three As UInteger = 3U
Const zero As UInteger = 0U
Dim As String ABC()
splitToString(ln, ABC(), sp)
Dim A As String = ABC(zero)
Dim B As String = ABC(one)
Dim C As String = ABC(two)
If A[Len(A) - one] = B[zero] AndAlso B[Len(B) - one] = C[zero] Then
    Print YES
Else
    Print NO
End If
End 0

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
