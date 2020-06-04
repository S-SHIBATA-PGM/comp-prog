' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer
        N = Console.ReadLine()
        If {2, 4, 5, 7, 9}.Contains(N Mod 10) Then
            Console.WriteLine("hon")
            Return
        ElseIf {0, 1, 6, 8}.Contains(N Mod 10) Then
            Console.WriteLine("pon")
            Return
        Else
            Console.WriteLine("bon")
            Return
        End If
        Return
    End Sub
End Class
