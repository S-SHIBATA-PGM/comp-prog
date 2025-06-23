' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Integer.parse(Console.ReadLine())
        Dim S As String = Console.ReadLine()
        Const sharp As Char = "#"c
        Const dot As Char = "."c
        Dim cnt As Integer = 0
        For i As Integer = 0 To N - 3
            If S.Chars(i) = sharp _
            AndAlso S.Chars(i + 1) = dot _
            AndAlso S.Chars(i + 2) = sharp Then
                cnt += 1
            End If
        Next
        Console.WriteLine(cnt)
        Return
    End Sub
End Class