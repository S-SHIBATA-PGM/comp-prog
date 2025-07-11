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
        Dim A As Integer = Integer.parse(arr(0))
        Dim B As Integer = Integer.parse(arr(1))
        Dim C As Integer = Integer.parse(arr(2))
        If C < B AndAlso C < A AndAlso A < B Then
            Console.WriteLine(Yes)
        ElseIf B < C AndAlso (A < B OrElse C < A) Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class