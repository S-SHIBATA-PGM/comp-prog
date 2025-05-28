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
        Const hyphen As Char = "-"c
        Const equal As Char = "="c
        Dim cTimes As Integer = 2 - N Mod 2
        Dim lrTimes As Integer = CType((N - cTimes) / 2, Integer)
        Dim lr As String = StrDup(lrTimes, hyphen)
        Dim c As String = StrDup(cTimes, equal)
        Console.WriteLine(lr & c & lr)
        Return
    End Sub
End Class