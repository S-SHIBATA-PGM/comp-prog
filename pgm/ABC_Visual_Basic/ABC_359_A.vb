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
        Dim S As String = Console.ReadLine()
        Const Takahashi As String = "Takahashi"
        Const one As Integer = 1
        Const zero As Integer = 0
        Dim arr(N - 1) As String
        Dim i As Integer = zero
        While (Not S Is Nothing)
            arr(i) = S
            i += one
            S = Console.ReadLine()
        End While
        Dim ret As String() = Array.FindAll(
            arr, Function(str As String) str = Takahashi)
        Console.WriteLine(ret.Length)
        Return
    End Sub
End Class