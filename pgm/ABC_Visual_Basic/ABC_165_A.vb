' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim K = Console.ReadLine()
        Dim A, B As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        A = arr(0) : B = arr(1)
        Console.WriteLine(If(A <= Math.Floor(CType(B, Decimal) / K) * K, "OK", "NG"))
        Return
    End Sub
End Class
