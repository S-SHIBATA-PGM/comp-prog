' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As String = Console.ReadLine()
        Console.WriteLine(
            Regex.Replace(N, "[^2]+", ""))
        Return
    End Sub
End Class