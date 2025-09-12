' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        Const blank As String = ""
        Const reg As String = "\|.*\|"
        Console.WriteLine(Regex.Replace(S, reg, blank))
        Return
    End Sub
End Class