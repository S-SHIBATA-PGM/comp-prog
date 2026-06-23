' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
#include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Type DayOfWeek
    As String * 3 Abbrev
    As Integer Code
End Type

Dim Shared As DayOfWeek Dow(...) = { _
    ("SUN", fbSunday),    _
    ("MON", fbMonday),    _
    ("TUE", fbTuesday),   _
    ("WED", fbWednesday), _
    ("THU", fbThursday),  _
    ("FRI", fbFriday),    _
    ("SAT", fbSaturday)   _
}

Function GetDowCode(ByVal key As String) As Integer
    Dim As String k = Left(UCase(Trim(key)), 3)
    For i As Integer = 0 To UBound(Dow)
        If Dow(i).Abbrev = k Then
            Return Dow(i).Code
        End If
    Next
    Return 0
End Function

Dim As String S
Input S
Const SUN As String = "SUN"
Const SAT As String = "SAT"
Print Str(GetDowCode(SUN) - GetDowCode(S) + GetDowCode(SAT))
End 0