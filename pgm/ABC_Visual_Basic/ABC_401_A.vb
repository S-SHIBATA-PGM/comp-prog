' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As Integer
        S = Console.ReadLine()
        Const lower As Integer = 200
        Const upper As Integer = 299
        Const Success As String = "Success"
        Const Failure As String = "Failure"
        If lower <= S AndAlso S <= upper Then
            Console.WriteLine(Success)
        Else
            Console.WriteLine(Failure)
        End If
        Return
    End Sub
End Class