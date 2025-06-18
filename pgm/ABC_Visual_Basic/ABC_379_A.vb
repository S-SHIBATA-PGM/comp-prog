' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N() As Char = Console.ReadLine().ToCharArray()
        Const blank As String = ""
        Const space As String = " "
        Dim a As Char = N(0)
        Dim b As Char = N(1)
        Dim c As Char = N(2)
        Dim bca() As Char = {b, c, a}
        Dim cab() As Char = {c, a, b}
        Console.Write(String.Join(blank, bca))
        Console.Write(space)
        Console.WriteLine(String.Join(blank, cab))
        Return
    End Sub
End Class