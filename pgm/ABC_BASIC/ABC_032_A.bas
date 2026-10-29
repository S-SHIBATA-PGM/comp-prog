' #include once "crt.bi"
' #include once "crt/ctype.bi"
' #include once "crt/limits.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

' #define Ceil(x) (-Int(-(x)))
' #define Min(a, b) iif((a) < (b), (a), (b))
' #define Max(a, b) iif((a) > (b), (a), (b))

Declare Function getGcd(ByVal a As LongInt, ByVal b As LongInt) As LongInt
Declare Function getLcm(ByVal a As LongInt, ByVal b As LongInt) As LongInt

Dim As UInteger a, b, n
Input a, b, n
Const one As UInteger = 1U
Dim As UInteger lcmVal = getLcm(a, b)
Print ((lcmVal + n - one) \ lcmVal) * lcmVal
End 0

Function getGcd(ByVal a As LongInt, ByVal b As LongInt) As LongInt
    Dim As LongInt resultVal = a
    Dim As LongInt k = 0ll
    Dim As LongInt nVal = b
    
    Do While nVal <> 0ll
        k = resultVal Mod nVal
        resultVal = nVal
        nVal = k
    Loop
    
    Return resultVal
End Function

Function getLcm(ByVal a As LongInt, ByVal b As LongInt) As LongInt
    Dim As LongInt g = getGcd(a, b)
    If g = 0ll Then Return 0ll
    Return a * (b \ g)
End Function