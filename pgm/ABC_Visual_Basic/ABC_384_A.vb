' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim arr() As String = Console.ReadLine().Split()
        Dim N As Integer = Integer.parse(arr(0))
        Dim c1 As String = arr(1)
        Dim c2 As String = arr(2)
        Dim inputLine As String = Console.ReadLine()
        Dim S As String() = Regex.Split(inputLine, "\B")
        For i As Integer = 0 To N - 1
            If S(i) <> c1 Then
                S(i) = c2
            End If
        Next
        Console.WriteLine(String.Join("", S))
        Return
    End Sub
End Class