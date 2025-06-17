' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Console.ReadLine()
        Dim str As String = Console.ReadLine()
        Dim slash As String = "/"
        Dim Yes As String = "Yes"
        Dim No As String = "No"
        Dim one As String = "1"
        Dim two As String = "2"
        Dim blank As String = ""
        If Not str.Contains(slash) Then
            Console.WriteLine(No)
            Return
        End If
        Dim S() As String = str.Split("/")
        Dim str1 As String() = Regex.Split(S(0), "\B")
        Dim str2 As String() = Regex.Split(S(1), "\B")
        Dim strOne() As String = Filter(str1, one, True, CompareMethod.Text)
        Dim strTwo() As String = Filter(str2, two, True, CompareMethod.Text)
        If S.Length <> 2 Then
            Console.WriteLine(No)
        ElseIf S(0) = blank AndAlso S(1) = blank Then
            Console.WriteLine(Yes)
        ElseIf str1.Length = str2.Length _
        AndAlso str1.Length = strOne.Length _
        AndAlso str2.Length = strTwo.Length Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class