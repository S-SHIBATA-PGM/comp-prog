' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Double N
Input N
Const high As String = ":("
Const soso As String = "so-so"
Const yay As String = "Yay!"
Const price As Integer = 206&
Const tax As Double = 1.08#
Dim As Double amount = Int(N * tax)
If amount > price Then
    Print high
ElseIf amount < price Then
    Print yay
Else
    Print soso
End If
End 0