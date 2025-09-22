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
        Const Yes As String = "Yes"
        Const No As String = "No"
        Const one As Integer = 1
        Const zero As Integer = 0
        If S(zero) <> UCase(S(zero)) Then
            Console.WriteLine(No)
            Return
        Else
            For i As Integer = one To S.Length - one
                If S(i) <> LCase(S(i))
                    Console.WriteLine(No)
                    Return
                End If
            Next
        End If
        Console.WriteLine(Yes)
        Return
    End Sub
End Class