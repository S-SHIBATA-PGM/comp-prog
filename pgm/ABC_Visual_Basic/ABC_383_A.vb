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
        Dim T(N) As Integer
        Dim V(N) As Integer
        For i As Integer = 0 To N - 1
            Dim arr() As String = Console.ReadLine().Split()
            T(i) = Integer.parse(arr(0))
            V(i) = Integer.parse(arr(1))
        Next
        Dim time As Integer = 0
        Dim water As Integer = 0
        For i As Integer = 0 To N - 1
            water = Math.Max(0, water - T(i) + time)
            water += V(i)
            time = T(i)
        Next
        Console.WriteLine(water)
        Return
    End Sub
End Class