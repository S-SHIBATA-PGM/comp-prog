' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Console.ReadLine()
        Dim S As String = Console.ReadLine()
        Dim T As String = Console.ReadLine()
        Dim cnt As Integer = 0
        For i As Integer = 0 To N - 1
            If S(i) <> T(i) Then
                cnt = cnt + 1
            End If
        Next
        Console.WriteLine(cnt)
        Return
    End Sub
End Class