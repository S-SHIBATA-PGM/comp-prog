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
        Const AtCoder As String = "AtCoder"
        Const Land As String = "Land"
        Const Yes As String = "Yes"
        Const No As String = "No"
        Dim S As String = arr(0)
        Dim T As String = arr(1)
        If S = AtCoder AndAlso T = Land Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class