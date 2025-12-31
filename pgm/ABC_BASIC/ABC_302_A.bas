#include "crt/math.bi"

'#define min(a, b) iif((a) < (b), (a), (b))
'#define max(a, b) iif((a) > (b), (a), (b))

Dim As LongInt A, B
Input A, B
Const one As LongInt = 1
Print Str((A + B - one) \ B)
End 0