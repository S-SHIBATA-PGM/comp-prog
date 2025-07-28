' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Const one As Integer = 1
        Const zero As Integer = 0
        Dim N As Integer = Integer.parse(Console.ReadLine())
        Dim S(N - one) As String
        For i As Integer = zero To N - one
            S(i) = Console.ReadLine()
        Next
        Const Yes As String = "Yes"
        Const No As String = "No"
        Const sweet As String = "sweet"
        Dim cnt As Integer = zero
        For i As Integer = zero To S.Length - one
            If i <> N - 1 AndAlso cnt = one AndAlso S(i) = sweet Then
                Console.WriteLine(No)
                Return
            ElseIf S(i) = sweet Then
                cnt += one
            Else
                cnt = zero
            End If
        Next
        Console.WriteLine(Yes)
        Return
    End Sub
End Class