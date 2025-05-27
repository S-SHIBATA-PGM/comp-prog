' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim A As Integer
        A = Console.ReadLine()
        Const takahashi As Integer = 400
        Const no As Integer = -1
        If takahashi Mod A = 0 Then
            Console.WriteLine(takahashi / A)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class