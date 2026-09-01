' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Declare Sub SplitSpace(ByVal src As String, result() As String)

Dim As String str1
Open Cons For Input As #1
Line Input #1, str1
Close #1
Const lt As String = "<"
Const gt As String = ">"
Const eq As String = "="
Const one As UInteger = 1U
Const zero As UInteger = 0U
ReDim As String arr()
SplitSpace(str1, arr())
Dim As Integer X, Y
X = ValInt("&H" & arr(zero))
Y = ValInt("&H" & arr(one))
If X < Y Then
    Print lt
ElseIf X > Y Then
    Print gt
Else
    Print eq
End If
End 0

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