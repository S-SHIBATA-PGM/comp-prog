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
        Const one As Integer = 1
        Const two As Integer = 2
        Const zero As Integer = 0
        Dim N As Integer = Integer.Parse(arr(zero))
        Dim S As Integer = Integer.Parse(arr(one))
        Dim K As Integer = Integer.Parse(arr(two))
        Dim P(N - one) As Integer
        Dim q(N - one) As Integer
        For i as Integer = zero To N - one
            Dim pq() As String = Console.ReadLine().Split()
            P(i) = Integer.Parse(pq(zero))
            Q(i) = Integer.Parse(pq(one))
        Next
        Dim price As Integer = zero
        For i As Integer = zero To N - one
            price += P(i) * Q(i)
        Next
        If price < S Then
            Console.WriteLine(price + K)
        Else
            Console.WriteLine(price)
        End If
        Return
    End Sub
End Class