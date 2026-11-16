' #include once "crt.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Double s1, e1, s2, e2, s3, e3
Input s1, e1
Input s2, e2
Input s3, e3
Const tenthsBase As Double = 10.0
Print Str(s1 * (e1 / tenthsBase) _
    + s2 * (e2 / tenthsBase) _
    + s3 * (e3 / tenthsBase))
End 0