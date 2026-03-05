' #include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
' #include once "vbcompat.bi"

#define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer H, W, R, C
Input H, W
Input R, C
Const one As Integer = 1&
Const two As Integer = 2&
If one < R AndAlso R < H AndAlso one < C AndAlso C < W Then
    Print Str(two + two)
ElseIf (R = one OrElse R = H) AndAlso one < C AndAlso C < W Then
    Print Str(two + Min(one, H - one))
ElseIf one < R AndAlso R < H AndAlso (C = one OrElse C = W) Then
    Print Str(two + Min(one, W - one))
Else 
    Print Str(Min(one, H - one) + Min(one, W - one))
End If
End 0