' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Type GradeEntry
    As UInteger key
    As String val
End Type

Dim As UInteger N
Input N
Const Bad As String = "Bad"
Const Good As String = "Good"
Const Great As String = "Great"
Const Perfect As String = "Perfect"
Const one As UInteger = 1U
Const two As UInteger = 2U
Const three As UInteger = 3U
Const sixty As UInteger = 60U
Const ninety As Uinteger = 90U
Const hundred As Uinteger = 100U
Const zero As UInteger = 0U
Dim As GradeEntry grade(three)
grade(zero).key = hundred : grade(zero).val = Perfect
grade(one).key = ninety : grade(one).val = Great
grade(two).key = sixty : grade(two).val = Good
grade(three).key = zero : grade(three).val = Bad
Dim As String matchedGrade = grade(three).val
For i As Integer = LBound(grade) To UBound(grade)
    If grade(i).key <= N Then
        matchedGrade = grade(i).val
        Exit For
    End If
Next i
Print matchedGrade
End 0