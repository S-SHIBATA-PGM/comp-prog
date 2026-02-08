' #include "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

#define Min(a, b) IIf((a) < (b), (a), (b))
#define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer L1, R1, L2, R2
Input L1, R1, L2, R2
Const zero As Integer = 0&
Print Str(Max(Min(R1, R2) - Max(L1, L2), zero))
End 0