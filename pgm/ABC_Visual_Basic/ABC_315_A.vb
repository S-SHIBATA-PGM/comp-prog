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
        Const a As String = "a"
        Const e As String = "e"
        Const i As String = "i"
        Const o As String = "o"
        Const u As String = "u"
        Const lbrack As String = "["
        Const rbrack As String = "]"
        Const blank As String = ""
        Dim arr() As String = {a, e, i, o, u}
        Dim reg As String = String.concat(
        lbrack, String.Join(blank, arr), rbrack)
        Console.WriteLine(Regex.replace(S, reg, blank))
        Return
    End Sub
End Class