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
        Const two As Integer = 2
        Const zero As Integer = 0
        Dim N As Integer = Integer.parse(arr(zero))
        Dim M As Integer = Integer.parse(arr(one))
        Dim P As Integer = Integer.parse(arr(two))
        Dim num As Integer = zero
        Dim day As Integer = zero
        While day < N
            day = M + num * P
            If day > N
                Exit While
            End If
            num += one
        End While
        Console.WriteLine(num)
        Return
    End Sub
End Class