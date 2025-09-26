' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        Const three As String = "3"
        Const four As String = "4"
        Console.WriteLine(String.Concat(S.TrimEnd(Ctype(three, Char)), four))
        Return
    End Sub
End Class