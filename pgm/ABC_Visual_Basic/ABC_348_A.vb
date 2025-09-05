' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Integer.Parse(Console.ReadLine())
        Const fail As String = "x"
        Const success As String = "o"
        Const three As Integer = 3
        Dim sb As New StringBuilder(N)
        For i As Integer = 1 To N
            If i Mod three <> 0 Then
                sb.Append(success)
            Else
                sb.Append(fail)
            End If
        Next
        Console.WriteLine(sb.ToString())
        Return
    End Sub
End Class