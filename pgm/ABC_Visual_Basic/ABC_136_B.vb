' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Console.ReadLine()
        Dim ans As Integer = 0
        For i As Integer = 1 To N
            If (Math.Floor(Math.Log10(i)) + 1) Mod 2 = 1
                ans += 1
            End If
        Next
        Console.WriteLine(ans)
        Return
    End Sub
End Class