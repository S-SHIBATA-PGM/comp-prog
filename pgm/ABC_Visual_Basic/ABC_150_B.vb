Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Console.ReadLine()
        Dim S As String = Console.ReadLine()
        Dim reg As New Regex("ABC")
        Console.WriteLine(reg.Matches(S).Count)
    End Sub
End Class
