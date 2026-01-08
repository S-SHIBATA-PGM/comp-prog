' #include "crt/math.bi"
' #include once "pcre.bi"

' #define min(a, b) iif((a) < (b), (a), (b))
' #define max(a, b) iif((a) > (b), (a), (b))

Dim As Integer A, B, C
Input A, B, C
Const Takahashi As String = "Takahashi"
Const Aoki As String = "Aoki"
Const zero As Integer = 0&
If C = zero Then
    If A <= B Then
        Print Aoki
    Else
        Print Takahashi
    End If
Else
    If B <= A Then
        Print Takahashi
    Else
        Print Aoki
    End If
End If
End 0