' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Integer.Parse(Console.ReadLine())
        Dim H() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.Parse(x))
        Const no As Integer = -1
        Const one As Integer = 1
        Const zero As Integer = 0
        Dim H1 As Integer = H(zero)
        For i As Integer = zero To N - one
            If H1 < H(i) Then
                Console.WriteLine(i + one)
                Return
            End If
        Next
        Console.WriteLine(no)
        Return
    End Sub
End Class