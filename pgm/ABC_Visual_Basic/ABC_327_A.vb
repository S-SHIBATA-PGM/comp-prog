' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Console.ReadLine()
        Dim S As String = Console.ReadLine()
        Const a As String = "a"
        Const b As String = "b"
        Dim ab As String = String.Concat(a, b)
        Dim ba As String = String.Concat(b, a)
        Const Yes As String = "Yes"
        Const No As String = "No"
        If S.Contains(ab) OrElse S.Contains(ba) Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class