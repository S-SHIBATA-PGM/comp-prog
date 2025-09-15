' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Integer.Parse(Console.ReadLine())
        Const one As String = "1"
        Const zero As String = "0"
        Console.WriteLine(
            String.Concat(
                String.Concat(Enumerable.Repeat(
                    String.Concat(one, zero), N)), one))
        Return
    End Sub
End Class