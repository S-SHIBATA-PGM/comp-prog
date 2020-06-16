' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Long = Console.ReadLine()
        Console.WriteLine(calc(1, N) - calc(3, N) - calc(5, N) + calc(15, N))
        Return
    End Sub

    Shared Function calc(ByVal n As Long, ByVal X As Long) As Long
        Dim Qt As Long = Math.Floor(CType(X, Decimal) / n)
        return Math.Floor(CType((n + Qt * n) * Qt, Decimal) / 2)
    End Function
End Class
