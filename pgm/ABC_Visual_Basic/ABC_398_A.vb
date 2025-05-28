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
        Dim lr As String = StrDup(CType((N - 2 + N Mod 2) / 2, Integer), hyphen)
        Dim c As String = StrDup(CType(2 - N Mod 2, Integer), equal)
        Console.WriteLine(lr & c & lr)
        Return
    End Sub
End Class