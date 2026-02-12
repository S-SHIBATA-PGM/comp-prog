#include once "crt.bi"
' #include once "crt/math.bi"
' #include once "pcre.bi"
#include once "vbcompat.bi"

' #define Min(a, b) IIf((a) < (b), (a), (b))
' #define Max(a, b) IIf((a) > (b), (a), (b))

Dim As Integer K
Input K
Const hh As Integer = 21&
Const mm As Integer = 0&
Const ss As Integer = 0&
Const hhmm As String = "hh:mm"
Const n As String = "n"
Const R As String = "%R"
' interval
' yyyy years
' q quarter(three months)
' m months
' ww weeks
' d	days Day
' y	days Year-Round Day
' y	days day of the week
' h	hours
' n	minutes
' s	seconds
Dim As Double duration = DateAdd(n, K, TimeSerial(hh, mm, ss))
Dim As tm t
t.tm_hour = Hour(duration)
t.tm_min = Minute(duration)
Dim As ZString * (sizeof(hhmm)) localStrR 
' アットマーク演算子は変数のメモリアドレスを取得する演算子
strftime(localStrR, sizeof(hhmm), R, @t)
Print localStrR
End 0