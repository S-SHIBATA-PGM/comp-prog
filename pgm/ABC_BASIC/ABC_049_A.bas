' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String c
Input c
Const vowel As String = "vowel"
Const consonant As String = "consonant"
Const a As String = "a"
Const e As String = "e"
Const i As String = "i"
Const o As String = "o"
Const u As String = "u"
Select Case c
    Case a, e, i, o, u
        Print vowel
    Case Else
        Print consonant
End Select
End 0