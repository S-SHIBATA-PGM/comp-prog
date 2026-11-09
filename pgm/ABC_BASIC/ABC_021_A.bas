' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger N
Input N
Const one As UInteger = 1U
Const two As UInteger = 2U
Const zero As UInteger = 0U
Dim As UInteger powerList()
Dim As UInteger cnt = zero
Dim As UInteger curr = one
While N > zero
    If N Mod two = one Then
        ReDim Preserve powerList(cnt)
        powerList(cnt) = curr
        cnt += one
    End If
    N = N \ two
    curr *= two
Wend
Print cnt
For i As UInteger = 0U To cnt - one
    Print powerList(i)
Next i
End 0