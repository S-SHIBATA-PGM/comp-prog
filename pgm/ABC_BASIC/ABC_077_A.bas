' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As String C1, C2
Input C1
Input C2
Const YES As String = "YES"
Const NO As String = "NO"
Const one As Integer = 1U
Const two As Integer = 2U
Const zero As Integer = 0U
Dim As String grid = C1 & C2
Dim As Boolean isPointSymmetric = True
Dim As UInteger length = Len(grid)
For i As Integer = zero To (length \ two) - one
    If grid[i] <> grid[length - one - i] Then
        isPointSymmetric = False
        Exit For
    End If
Next
If isPointSymmetric Then
    Print Yes
Else
    Print No
End If
End 0