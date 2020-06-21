' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S, T As String
        Dim arr() As String
        arr = Split(Console.ReadLine())
        S = arr(0) : T = arr(1)
        Console.WriteLine(T & S)
        Return
    End Sub
End Class
