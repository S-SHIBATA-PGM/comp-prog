' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim R As Integer = Integer.parse(Console.ReadLine())
        Const hundred As Integer = 100
        Console.WriteLine(hundred - (R Mod hundred))
        Return
    End Sub
End Class