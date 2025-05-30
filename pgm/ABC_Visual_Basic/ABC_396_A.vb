' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Ctype(Console.readLine(), Integer)
        Dim arr() As String = Split(Console.readLine())
        Const Yes As String = "Yes"
        Const No As String = "No"
        Const times As Integer = 3
        Dim A(N) As Integer
        For i As Integer = 0 To N - 1
            A(i) = Ctype(arr(i), Integer)
        Next
        Dim cnt As Integer = 0
        Dim pre As Integer = -1
        For i As Integer = 0 To N - 1
            If pre = A(i) Then
                cnt += 1
                If cnt = times Then
                    Console.writeLine(Yes)
                    Return
                End If
            Else
                cnt = 1
                pre = A(i)
            End If
        Next
        Console.writeLine(No)
        Return
    End Sub
End Class