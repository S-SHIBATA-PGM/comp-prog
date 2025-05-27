' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String
        S = Console.ReadLine()
        For Each c As Char in S
            If Char.IsUpper(c) Then
                Console.Write(c)
            End If
        Next
        Console.WriteLine()
        Return
    End Sub
End Class