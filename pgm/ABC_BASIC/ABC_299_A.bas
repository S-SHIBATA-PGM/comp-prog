'#include "crt/math.bi"
#include once "pcre.bi"

'#define min(a, b) iif((a) < (b), (a), (b))
'#define max(a, b) iif((a) > (b), (a), (b))

Function IsMatch(text As String, pattern As String) As Boolean
    Dim As pcre Pointer re
    Dim As Const ZString Pointer errptr
    Dim As Integer erroffset
    re = pcre_compile(pattern, 0, @errptr, @erroffset, NULL)
    If re = NULL Then Return False
    Dim As Integer result = pcre_exec(re, NULL, text, Len(text), 0, 0, NULL, 0)
    pcre_free(re)
    Return result >= 0
End Function

Dim As Integer N
Input N
Dim As String S
Input S
Const dot As String = "."
Const bar As String = "|"
Const ast As String = "*"
Const strIn As String = "in"
Const strOut As String = "out"
Const reg As String = "\" & bar & "\" & dot & "*\" & ast & "\" & dot & "*\" & _
    bar
If IsMatch(S, reg) Then
    Print strIn
Else
    Print strOut
End If
End 0