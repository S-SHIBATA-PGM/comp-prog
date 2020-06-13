' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S, W As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        S = arr(0) : W = arr(1)
        Console.WriteLine(If(S <= W, "unsafe", "safe"))
        Return
    End Sub
End Class
