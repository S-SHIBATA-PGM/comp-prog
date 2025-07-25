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
        Dim Y As Integer = Integer.parse(arr(0))
        Const four As Integer = 4
        Const fourHundred As Integer = 400
        Const hundred As Integer = 100
        Const leapYear As Integer = 366
        Const year As Integer = 365
        Const zero As Integer = 0
        If Y Mod four <> zero Then
            Console.WriteLine(year)
        ElseIf Y Mod four = zero AndAlso Y Mod hundred <> zero Then
            Console.WriteLine(leapYear)
        ElseIf Y Mod Hundred = zero AndAlso Y Mod fourHundred <> zero Then
            Console.WriteLine(year)
        Else
            Console.WriteLine(leapYear)
        End If
        Return
    End Sub
End Class