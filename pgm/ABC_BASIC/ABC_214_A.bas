' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Type contest
    As String edition
    As Integer problem
End Type

Dim As Integer N
Input N
Const edition125 As String = "125"
Const edition211 As String = "211"
Const edition214 As String = "214"
Const one As Integer = 1&
Const two As Integer = 2&
Const zero As Integer = 0&
Const problem4 As Integer = 4&
Const problem6 As Integer = 6&
Const problem8 As Integer = 8&
Dim As contest contest(two)
contest(zero).edition = edition125
contest(zero).problem = problem4
contest(one).edition = edition211
contest(one).problem = problem6
contest(two).edition = edition214
contest(two).problem = problem8
For i As Integer = LBound(contest) To Ubound(contest)
    If ValInt(contest(i).edition) >= N Then
        Print Str(contest(i).problem)
        Exit For
    End If
Next
End 0