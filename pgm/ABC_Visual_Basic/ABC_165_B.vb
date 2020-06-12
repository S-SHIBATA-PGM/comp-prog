' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim X As Long = Console.ReadLine()
        Dim cur As Long = 100
        Dim ans As Integer = 0
        While cur < X
            cur += Math.Floor(CType(cur, Decimal) / 100)
            ans += 1
        End While
        Console.WriteLine(ans)
        Return
    End Sub
End Class
