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
        Dim arr() As String =
        New String() {"ACE", "BDF", "CEG", "DFA", "EGB", "FAC", "GBD"}
        If arr.Contains(S) Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class