Option Strict On
Imports System.Collections.Generic
Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim H, N As Integer
        Dim arr(2) As String
        arr = Split(Console.ReadLine())
        H = Integer.Parse(arr(0)) : N = Integer.Parse(arr(1))
        Dim A As New List(Of Integer)(Array.ConvertAll(Of String, Integer) _
            (Split(Console.ReadLine()), AddressOf Integer.Parse))
        Dim accum As Integer = 0
        For Each Ai As Integer In A
            accum += Ai
        Next
        Console.WriteLine(If(accum < H, "No", "Yes"))
    End Sub
End Class
