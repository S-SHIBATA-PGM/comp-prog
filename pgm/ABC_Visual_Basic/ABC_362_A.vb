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
        Dim C As String = Console.ReadLine()
        Const Red As String = "Red"
        Const Green As String = "Green"
        Const Blue As String = "Blue"
        Dim R As Integer = Integer.Parse(arr(0))
        Dim G As Integer = Integer.Parse(arr(1))
        Dim B As Integer = Integer.Parse(arr(2))
        Dim dict As New Dictionary(Of String, Integer)
        dict(Red) = R
        dict(Green) = G
        dict(Blue) = B
        dict.Remove(C)
        Dim list As New List(Of Integer)
        For Each kv As KeyValuePair(Of String, Integer) In dict
            list.Add(kv.value)
        Next
        list.Sort()
        Console.WriteLine(list(0))
        Return
    End Sub
End Class