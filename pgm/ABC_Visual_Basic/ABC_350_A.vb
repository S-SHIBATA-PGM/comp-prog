' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        Const Yes As String = "Yes"
        Const No As String = "No"
        Const last As Integer = 349
        Const ng As Integer = 316
        Const zero As Integer = 0
        Dim num As Integer = Integer.Parse(S.Substring(3, 3))
        If num <= last AndAlso num <> ng AndAlso num <> zero Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class