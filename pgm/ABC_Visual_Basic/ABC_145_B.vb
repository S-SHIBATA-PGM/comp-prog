' Imports System.Collections.Generic
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Console.ReadLine()
        Dim S As String = Console.ReadLine()
        Console.WriteLine(If(N Mod 2 = 0, _
            If(S.Substring(0, N / 2) = S.Substring(N / 2), "Yes", "No"), "No"))
        Return
    End Sub
End Class
