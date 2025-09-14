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
        Const nine As Integer = 9
        Const zero As Integer = 0
        Dim A As Integer = Integer.Parse(arr(0))
        Dim B As Integer = Integer.Parse(arr(1))
        For i As Integer = zero To nine
            If i <> A + B Then
                Console.WriteLine(i)
                Exit For
            End If
        Next
        Return
    End Sub
End Class