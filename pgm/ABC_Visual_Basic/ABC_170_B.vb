' C + T = X
' 2 * C + 4 * T = Y
' T = X - C
' 2 * C + 4 * (X - C) = Y
' - 2 * C = Y - 4 * X
' C = 2 * X - Y / 2
' T = -X + Y / 2
' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim X, Y As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        X = arr(0) : Y = arr(1)
        Dim C As Integer = 2 * X - Math.Floor(Y / 2)
        Dim T As Integer = -X + Math.Floor(Y / 2)
        Console.WriteLine(
            If(0 <= C AndAlso 0 <= T AndAlso C + T = X AndAlso 2 * C + 4 * T = Y,
             "Yes", "No"))
        Return
    End Sub
End Class
