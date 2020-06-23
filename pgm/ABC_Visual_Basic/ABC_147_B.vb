' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        Dim ans As Integer = 0
        For i As Integer = 0 To Math.Floor(Len(S) / 2) - 1
            If S(i) <> S(Len(S) - i - 1) Then
                ans += 1
            End If
        Next
        Console.WriteLine(ans)
        Return
    End Sub
End Class
