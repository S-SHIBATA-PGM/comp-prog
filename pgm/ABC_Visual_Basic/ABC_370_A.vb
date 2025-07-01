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
        Const Yes As String = "Yes"
        Const No As String= "No"
        Const Invalid As String = "Invalid"
        Const one As Integer = 1
        Const zero As Integer = 0
        Dim L As Integer = Integer.Parse(arr(0))
        Dim R As Integer = Integer.Parse(arr(1))
        IF L = one AndAlso R = zero Then
            Console.WriteLine(Yes)
        ElseIf L = zero AndAlso R = one Then
            Console.WriteLine(No)
        Else
            Console.WriteLine(Invalid)
        End If
        Return
    End Sub
End Class