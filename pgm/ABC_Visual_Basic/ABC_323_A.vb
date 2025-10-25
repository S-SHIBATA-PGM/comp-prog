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
        Const zero As String = "0"
        Const Yes As String = "Yes"
        Const No As String = "No"
        Const dot As String = "."
        Dim reg As string = "^."
        reg = String.Concat(reg, zero)
        reg = String.Concat(reg, dot, zero)
        reg = String.Concat(reg, dot, zero)
        reg = String.Concat(reg, dot, zero)
        reg = String.Concat(reg, dot, zero)
        reg = String.Concat(reg, dot, zero)
        reg = String.Concat(reg, dot, zero)
        reg = String.Concat(reg, dot, zero)
        IF Regex.IsMatch(S, reg) Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class