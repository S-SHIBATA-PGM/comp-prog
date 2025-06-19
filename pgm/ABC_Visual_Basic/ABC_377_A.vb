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
        Const A As String = "A"
        Const B As String = "B"
        Const C As String = "C"
        If S.Contains(A) AndAlso S.Contains(B) AndAlso S.Contains(C) Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class