' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim K As Integer
        DIm S As String
        K = Console.ReadLine()
        S = Console.ReadLine()
        If S.Length <= K Then
            Console.WriteLine(S)
        Else
            Console.WriteLine(S.Substring(0, K) & "...")
        End If
        Return
    End Sub
End Class
