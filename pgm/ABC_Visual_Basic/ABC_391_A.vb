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
        Dim NEWS As New Dictionary(Of String, String)
        NEWS("N") = "S"
        NEWS("E") = "W"
        NEWS("W") = "E"
        NEWS("S") = "N"
        For i As Integer = 0 To S.Length - 1
            Console.Write(NEWS(S(i).ToString()))
        Next
        Console.WriteLine()
        Return
    End Sub
End Class