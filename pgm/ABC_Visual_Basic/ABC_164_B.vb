' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim A, B, C, D As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        A = arr(0) : B = arr(1) : C = arr(2): D = arr(3)
        Console.WriteLine(
            If(Math.Floor((B + C - 1) / B) <= Math.Floor((A + D - 1) / D) , "Yes", "No"))
        Return
    End Sub
End Class
