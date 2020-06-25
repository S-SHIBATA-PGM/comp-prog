' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Console.ReadLine()
        Dim S As String = Console.ReadLine()
        Dim alp As String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        Console.WriteLine(Trans(S, alp, alp.Substring(N) + alp.Substring(0, N)))
        Return
    End Sub

    Shared Function Trans(ByVal S As String, ByVal f As String, ByVal t As String) As String
        For i As Integer = 0 To S.Length - 1
            Dim idx = f.indexOf(S(i))
            S = S.Substring(0, i) + t(idx) + S.Substring(i + 1)
        Next
        Trans = S
    End Function
End Class
