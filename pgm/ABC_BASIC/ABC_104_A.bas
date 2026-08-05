' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Dim As UInteger R
Input R
Const ABC As String = "ABC"
Const ARC As String = "ARC"
Const AGC As String = "AGC"
Const oneThousandTwoHundred   As UInteger = 1200U
Const twoThousandEightHundred As UInteger = 2800U
Type RatingType
    threshold As UInteger
    contest   As Const ZString Ptr
End Type
Dim As RatingType Rating(...) = { _
    (oneThousandTwoHundred,   @ABC), _
    (twoThousandEightHundred, @ARC)  _
}
Dim As String contest = ""
Dim As Boolean isFound = False
For i As Integer = LBound(Rating) To UBound(Rating)
    If Rating(i).threshold > R Then
        contest = *Rating(i).contest
        isFound = True
        Exit For
    End If
Next
If isFound Then
    Print contest
Else
    Print AGC
End If
End 0