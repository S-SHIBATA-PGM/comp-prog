' #include "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As String S
Input S
Dim As Integer one = 1&
Dim As Integer twoHundredFiftyFive = 255&
Dim As Integer no = -one
Dim As Integer zero = 0&
Dim As Integer counts(zero To twoHundredfiftyFive)
For i As Integer = zero To Len(S) - one
    counts(S[i]) += one
Next
Dim As Boolean found = False
For i As Integer = zero To Len(S) - one
    If counts(S[i]) = one Then
        Print Chr(S[i])
        found = True
        Exit For
    End If
Next
If Not found Then
    Print Str(no)
End If
End 0