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
        Const blank As String = ""
        Const space As String = " "
        Dim N As Integer = Integer.parse(arr(zero))
        Dim L As Integer = Integer.parse(arr(one))
        Dim R As Integer = Integer.parse(arr(two))
        Dim A(N - one) As Integer
        Dim LR(R - L) As Integer
        Dim idx As Integer = zero
        For i As Integer = zero To N - one
            A(i) = i + one
            If i >= L - one AndAlso i <= R - one Then
                LR(idx) = A(i)
                idx += one
            End If
        Next
        idx = zero
        Dim s As String = blank
        For Each a1 As Integer In A
            If idx >= L - one Then
                Exit For
            End If
            Console.Write(s)
            Console.Write(a1)
            idx += one
            s = space
        Next
        Dim RL(R - L) As Integer
        RL = LR
        Array.Reverse(RL)
        For Each num As Integer In RL
            Console.Write(s)
            Console.Write(num)
            s = space
        Next
        idx = zero
        For Each a2 in A
            If idx <= R - one
                idx += one
                Continue For
            End If
            Console.Write(s)
            Console.Write(a2)
            idx += one
            s = space
        Next
        Console.WriteLine()
        Return
    End Sub
End Class