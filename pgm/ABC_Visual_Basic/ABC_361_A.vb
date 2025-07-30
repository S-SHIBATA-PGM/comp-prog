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
        Dim A As List(Of Integer) = Array.ConvertAll(
            Console.ReadLine().Split(),
            Function(s As String) Integer.Parse(s)).ToList()
        Const space As String = " "
        Const one As Integer = 1
        Const two As Integer = 2
        Const zero As Integer = 0
        Dim N As Integer = Integer.Parse(arr(zero))
        Dim K As Integer = Integer.Parse(arr(one))
        Dim X As Integer = Integer.Parse(arr(two))
        A.Insert(K, X)
        Console.WriteLine(
            String.Join(
                space,
                Array.ConvertAll(
                    A.ToArray(),
                    Function(i As Integer) i.ToString()
                )
            )
        )
        Return
    End Sub
End Class