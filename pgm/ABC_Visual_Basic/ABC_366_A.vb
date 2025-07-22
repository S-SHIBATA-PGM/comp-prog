' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim arr() As String = Console.ReadLine().Split()
        Const Yes As String = "Yes"
        Const No As String = "No"
        Dim N As Integer = Integer.parse(arr(0))
        Dim T As Integer = Integer.parse(arr(1))
        Dim A As Integer = Integer.parse(arr(2))
        If Math.Max(T, A) > N / 2 Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class