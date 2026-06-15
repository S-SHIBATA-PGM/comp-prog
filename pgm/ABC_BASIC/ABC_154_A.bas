' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Sub SplitSpace(ByVal src As String, result() As String)
    Erase result
    Dim As Integer startPos = 1
    Dim As Integer spacePos = 0
    Dim As Integer wordCount = 0
    If Right(src, 1) <> " " Then src += " "
    spacePos = Instr(startPos, src, " ")
    Do While spacePos > 0
        Dim As Integer length = spacePos - startPos
        If length > 0 Then
            wordCount += 1
            ReDim Preserve result(0 To wordCount - 1)
            result(wordCount - 1) = Mid(src, startPos, length)
        End If
        startPos = spacePos + 1
        spacePos = Instr(startPos, src, " ")
    Loop
End Sub

Dim As String str1
Open Cons For Input As #1
Line Input #1, str1
Dim As UInteger A, B
Input A, B
Dim As String U
Input U
Const one As Uinteger = 1U
Const zero As Uinteger = 0U
ReDim As String word(0)
SplitSpace(str1, word())
Dim As String S, T
S = word(zero)
T = word(one)
If S = U Then
    Print (A - one); Space(one); B
Else
    Print A; Space(one); (B - one)
End If
End 0