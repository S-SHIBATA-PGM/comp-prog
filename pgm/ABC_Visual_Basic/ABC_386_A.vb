' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim ABCD() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.Parse(x))
        Const thirteen As Integer = 13
        Const Yes As String = "Yes"
        Const No As String = "No"
        Dim A As Integer = ABCD(0)
        Dim B As Integer = ABCD(1)
        Dim C As Integer = ABCD(2)
        Dim D As Integer = ABCD(3)
        Dim cards(thirteen) As Integer
        cards(A - 1) += 1
        cards(B - 1) += 1
        cards(C - 1) += 1
        cards(D - 1) += 1
        Dim threeCards As Integer = 0
        Dim pairs As Integer = 0
        For i As Integer = 0 To thirteen - 1
            If cards(i) = 3 Then
                threeCards += 1
                Exit For
            ElseIf cards(i) = 2 Then
                pairs += 1
            End If
        Next
        If threeCards = 1 OrElse pairs = 2 Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class