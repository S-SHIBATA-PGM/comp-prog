' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer
        N = Console.ReadLine()
        Dim A() As String
        A = Split(Console.ReadLine())
        Dim sum As Integer = 0
        For i As Integer = 0 To N - 1 Step 2
            sum += A(i)
        Next
        Console.WriteLine(sum)
        Return
    End Sub
End Class