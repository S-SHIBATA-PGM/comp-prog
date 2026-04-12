' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer X
Input X
Const expert As String = "expert"
Const one As Integer = 1&
Const three As Integer = 3&
Const forty As Integer = 40&
Const seventy As Integer = 70&
Const upper As Integer = 90&
Const zero As Integer = 0&
Dim As Integer rank(three) = {zero, forty, seventy, upper}
Dim As Integer pre = zero
If X >= upper Then
    Print expert
Else
    For i As Integer = UBound(rank) To LBound(rank) Step -one
        If X >= rank(i) Then
            Print Str(pre - X)
            Exit For
        End If
        pre = rank(i)
    Next
End If
End 0