' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As String = Console.ReadLine()
        Const Yes As String = "Yes"
        Const No As String = "No"
        Const zero As Integer = 0
        Const one As Char = "1"c
        Const two As Char = "2"c
        Const three As Char = "3"c
        Dim cnt As New Dictionary(Of Char, Integer)
        cnt(one) = zero
        cnt(two) = zero
        cnt(three) = zero
        For Each c As Char In N
            IF c = one Then
                cnt(one) += 1
            ElseIf c = two Then
                cnt(two) += 1
            ElseIf c = three Then
                cnt(three) += 1
            End If
        Next
        If cnt(one) = Val(one) _
        AndAlso cnt(two) = Val(two) _
        AndAlso cnt(three) = Val(three) Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class