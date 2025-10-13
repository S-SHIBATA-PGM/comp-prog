' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S() As String = Regex.Split(Console.ReadLine(), "\B")
        Const space As String = " "
        Console.WriteLine(String.Join(space, S))
        Return
    End Sub
End Class