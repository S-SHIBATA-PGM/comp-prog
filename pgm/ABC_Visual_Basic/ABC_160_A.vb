' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As Char() = Console.ReadLine().ToCharArray()
        Dim flg As Boolean = S(2) = S(3) AndAlso S(4) = S(5)
        Console.WriteLine(If(flg, "Yes", "No"))
    End Sub
End Class
