' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S() As String = Console.ReadLine().Split()
        Const sick As String = "sick"
        Const fine As String = "fine"
        Const one As Integer = 1
        Const two As Integer = 2
        Const three As Integer = 3
        Const four As Integer = 4
        Dim S1 As String = S(0)
        Dim S2 As String = S(1)
        If S1 = sick AndAlso S2 = sick Then
            Console.WriteLine(one)
        ElseIf S1 = sick AndAlso S2 = fine Then
            Console.WriteLine(two)
        ElseIf S1 = fine AndAlso S2 = sick Then
            Console.WriteLine(three)
        Else
            Console.WriteLine(four)
        End If
        Return
    End Sub
End Class