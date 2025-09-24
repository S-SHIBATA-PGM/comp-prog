' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Integer.parse(Console.ReadLine())
        Dim arr As String = Console.ReadLine()
        Const L As String = "L"
        Const o As String = "o"
        Const ng As String = "ng"
        Console.WriteLine(String.Concat(L, StrDup(N, o), ng))
        Return
    End Sub
End Class