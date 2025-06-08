' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim A() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.parse(x))
        Const Yes As String = "Yes"
        Const No As String = "No"
        Dim times As Integer = 0
        Dim ret As String = Yes
        For i As Integer = 0 To A.Length - 1
            If i = A.Length - 1 AndAlso A(i) <> i + 1 Then
                ret = No
                Exit For
            Else
                If A(i) <> i + 1 Then
                    If times = 0 AndAlso A(i + 1) = i + 1 Then
                        Dim num As Integer = A(i)
                        A(i) = A(i + 1)
                        A(i + 1) = num
                        times += 1
                    Else
                        ret = No
                        Exit For
                    End If
                End If
            End If
        Next
        Console.WriteLine(If(times <> 1, No, ret))
        Return
    End Sub
End Class