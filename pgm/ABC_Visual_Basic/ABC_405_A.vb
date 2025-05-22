' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim X, R As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        Const lower1 As Integer = 1600
        Const lower2 As Integer = 1200
        Const upper1 As Integer = 2999
        Const upper2 As Integer = 2399
        Const Yes As String = "Yes"
        Const No As String = "No"
        Dim lower(2) As Integer
        Dim upper(2) As Integer
        lower(0) = lower1 : lower(1) = lower2
        upper(0) = upper1 : upper(1) = upper2
        R = arr(0) : X = arr(1)
        If lower(X - 1) <= R And R <= upper(X - 1) Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class