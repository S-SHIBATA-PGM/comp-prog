#include "crt.bi"
#include "vbcompat.bi"

Const SaturdayName As String = "Saturday"
Const A As String = "%A"
Const u As String = "%u"
Const one As Integer = 1&
Const twentyFour As Integer = 24&
Const thirtyTwo As Integer = 32&
Const sixty As Integer = 60&
Const no As Integer = -1&
Const zero As Integer = 0&

' 構造体
' 変数の設計図であって変数そのものではない
Type DayOfWeekMap
    dayName As String
    dayValue As Integer
End Type

' Shared はすべての場所からアクセスを可能にする
' Any は型ではない
' 次元の数は決まっているが、要素の数はまだ決まっていない
Dim Shared dow(Any) As DayOfWeekMap

Function GetDowValue(s As String) As Integer
    For i As Integer = LBound(dow) To UBound(dow)
        If dow(i).dayName = s Then
            Return dow(i).dayValue
        End If
    Next
    Return no
End Function

' dow(i).dayName = "Monday", dow(i).dayValue = 1
' dow(i).dayName = "Tuesday", dow(i).dayValue = 2
' dow(i).dayName = "Wednesday", dow(i).dayValue = 3
' dow(i).dayName = "Thursday", dow(i).dayValue = 4
' dow(i).dayName = "Friday", dow(i).dayValue = 5
' dow(i).dayName = "Saturday", dow(i).dayValue = 6
' dow(i).dayName = "Sunday", dow(i).dayValue = 7
Sub GetDayOfWeekByCode()
    Dim As time_t rawtime
    ' tm は型
    ' 型の後ろに Ptr を付けるとデータそのものではなく
    ' データが置いてあるメモリ上の場所を扱う変数になる
    Dim As tm Ptr timeinfo
    ' ZString * 32
    ' ヌル終端文字列を格納するための
    ' 固定長のメモリ領域を確保する宣言
    Dim As ZString * thirtyTwo buffer_A, buffer_u
    Dim As Boolean continue_flg = True
    
    ' C言語の標準ライブラリ
    ' crt.bi
    ' & アドレス演算子
    ' 変数がメモリ上のどこにあるか
    ' アドレス
    ' 変数の値を直接書き換える
    time_(VarPtr(rawtime))

    Do While continue_flg = True
        timeinfo = localtime(VarPtr(rawtime))

        ' 変換指定子 [%A]
        ' ロケールの簡略化されていない曜日の名前。
        ' xxxxxxxxx (max 9 char) (Wednesday)
        ' [tm_wday]
        strftime(buffer_A, thirtyTwo, A, timeinfo)

        ' 変換指定子 [%u]
        ' JIS X 0301が規定する暦週の中の日の序数を表す10進数
        ' (1～7)。月曜日は1。
        strftime(buffer_u, thirtyTwo, u, timeinfo)

        Dim As String currentDay = buffer_A

        If GetDowValue(currentDay) = no Then
            Dim As Integer currentSize = zero

            If UBound(dow) >= zero Then
                currentSize = UBound(dow) + one
            End If

            ' Preserve は配列のサイズの拡縮において
            ' 既存の値を消さずに保持せよという命令
            ' 縮めることは可能であるが
            ' はみ出した部分のデータは切り捨てられて消滅する
            ReDim Preserve dow(currentSize)

            dow(currentSize).dayName = currentDay

            ' Val は文字列を数値に変換する組み込み関数
            dow(currentSize).dayValue = Val(buffer_u)

            ' 1日
            rawtime += (twentyFour * sixty * sixty)
        Else
            continue_flg = False
        End If
    Loop
End Sub

Dim As String S
Input S
GetDayOfWeekByCode()
Dim As Integer valSat = GetDowValue(SaturdayName)
Dim As Integer valS = GetDowValue(S)
Dim As Integer diff = valSat - valS
Dim As Integer daysInWeek = UBound(dow) + one
If diff < zero Then
    diff += daysInWeek
End If
Print Str(diff)