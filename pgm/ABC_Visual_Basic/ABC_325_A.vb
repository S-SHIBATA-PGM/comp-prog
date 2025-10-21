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
        Const space As String = " "
        Const san As String = "san"
        Const one As Integer = 1
        Const zero As Integer = 0
        Dim S As String = arr(zero)
        Dim T As String = arr(one)
        Console.Write(S)
        Console.Write(space)
        Console.WriteLine(san)
        Return
    End Sub
End Class