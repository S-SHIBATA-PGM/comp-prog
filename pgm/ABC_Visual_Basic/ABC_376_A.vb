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
        Dim C As Integer = Integer.Parse(arr(1))
        Dim T() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.Parse(x))
        Dim pre As Integer = -C
        Dim Candy As Integer = 0
        For Each time In T
            If time - pre >= C Then
                Candy += one
                pre = time
            End If
        Next time
        Console.WriteLine(Candy)
        Return
    End Sub
End Class