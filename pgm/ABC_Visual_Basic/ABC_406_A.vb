' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim A, B, C, D As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        Const Yes As String = "Yes"
        Const No As String = "No"
        A = arr(0) : B = arr(1) : C = arr(2) : D = arr(3)
        If C < A Then
            Console.WriteLine(Yes)
        ElseIf C = A And D < B Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class