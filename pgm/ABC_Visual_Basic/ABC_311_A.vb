' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Integer.parse(Console.ReadLine())
        Dim S() As String = Console.ReadLine().
        Select(Function(x) x.ToString()).ToArray()
        Const A As String = "A"
        Const B As String = "B"
        Const one As Integer = 1
        Dim numA As Integer = 0
        Dim numB As Integer = 0
        Dim numC As Integer = 0
        For i As Integer = 0 To N - one
            If A.Equals(S(i)) Then
                numA += 1
            Else If B.Equals(S(i)) Then
                numB += 1
            Else
                numC += 1
            End If
            If numA > 0 AndAlso numB > 0 AndAlso numC > 0 Then
                Console.WriteLine(i + 1)
                Exit For
            End If
        Next
        Return
    End Sub
End Class