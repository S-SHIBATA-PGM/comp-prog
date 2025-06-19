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
        Const zero As Integer = 0
        Const one As String = "1"
        Const two As String = "2"
        Const three As String = "3"
        Const four As String = "4"
        Dim A1 As String = arr(0)
        Dim A2 As String = arr(1)
        Dim A3 As String = arr(2)
        Dim A4 As String = arr(3)
        Dim A As New Dictionary(Of String, Integer)
        A(one) = zero
        A(two) = zero
        A(three) = zero
        A(four) = zero
        A(A1) += 1
        A(A2) += 1
        A(A3) += 1
        A(A4) += 1
        Dim cnt As Integer = zero
        For Each kv As KeyValuePair(Of String, Integer) In A
            cnt += kv.Value \ 2
        Next
        Console.WriteLine(cnt)
        Return
    End Sub
End Class