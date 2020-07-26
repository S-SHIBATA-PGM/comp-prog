' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        Dim flg As Boolean = False
        For i As Integer = 1 To S.Length - 1
            If S(i - 1) = S(i)
                flg = True
                Exit For
            End If
        Next
        Console.WriteLine(If(flg, "Bad", "Good"))
        Return
    End Sub
End Class