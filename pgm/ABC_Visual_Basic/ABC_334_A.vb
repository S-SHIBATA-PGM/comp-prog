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
        Const Bat As String = "Bat"
        Const Glove As String = "Glove"
        Const one As Integer = 1
        Const zero As Integer = 0
        Dim B As Integer = Integer.parse(arr(zero))
        Dim G As Integer = Integer.parse(arr(one))
        If B > G Then
            Console.WriteLine(Bat)
        Else
            Console.WriteLine(Glove)
        End If
        Return
    End Sub
End Class