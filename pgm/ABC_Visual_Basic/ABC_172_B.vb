' Imports System.Collections.Generic
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        Dim T As String = Console.ReadLine()
        Dim z = S.Zip(T, Function(first, second) New Char() { first, second })
        Dim ans = 0
        For Each v in z
            If v(0) <> v(1) Then
                ans += 1
            End If
        Next
        Console.WriteLine(ans)
        Return
    End Sub
End Class