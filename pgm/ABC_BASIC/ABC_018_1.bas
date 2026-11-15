' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Type MameType
    As String abc
    As UInteger point
    As UInteger rank
End Type
Dim As UInteger A, B, C
Input A, B, C
Const one As UInteger = 1U
Const two As UInteger = 2U
Const zero As UInteger = 0U
Dim As MameType mame(two)
mame(zero).abc = "A" : mame(zero).point = A : mame(zero).rank = zero
mame(one).abc = "B" : mame(one).point = B : mame(one).rank = zero
mame(two).abc = "C" : mame(two).point = C : mame(two).rank = zero
Dim As Integer lb = LBound(mame)
Dim As Integer ub = UBound(mame)
For i As Integer = zero To (ub - lb)
    For j As Integer = lb To ub - i - one
        Dim As Boolean needSwap = False
        If mame(j).point < mame(j + one).point Then
            needSwap = True
        ElseIf mame(j).point = mame(j + one).point Then
            If mame(j).abc < mame(j + one).abc Then
                needSwap = True
            End If
        End If
        If needSwap Then
            Swap mame(j), mame(j + one)
        End If
    Next j
Next i
For i As Integer = lb To ub
    mame(i).rank = i + one
Next i
For i As Integer = zero To (ub - lb)
    For j As Integer = lb To ub - i - one
        If mame(j).abc > mame(j + one).abc Then
            Swap mame(j), mame(j + one)
        End If
    Next j
Next i
For i As Integer = lb To ub
    Print mame(i).rank
Next i
End 0