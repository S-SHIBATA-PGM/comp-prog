' Imports System.Collections.Generic
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim A, B As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        A = arr(0) : B = arr(1)
        Console.WriteLine(If(A <= 9 AndAlso B <= 9, A * B, -1))
        Return
    End Sub
End Class
