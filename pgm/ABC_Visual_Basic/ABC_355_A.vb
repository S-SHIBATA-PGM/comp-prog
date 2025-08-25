' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim arr() As String = Console.ReadLine().Split()
        Const one As Integer = 1
        Const three As Integer = 3
        Const no As Integer = -1
        Dim A As Integer = Integer.Parse(arr(0))
        Dim B As Integer = Integer.Parse(arr(1))
        If A = B Then
            Console.WriteLine(no)
        Else
            For i As Integer = one To three
                If i <> A AndAlso i <> B Then
                    Console.WriteLine(i)
                    Exit For
                End If
            Next
        End If
        Return
    End Sub
End Class