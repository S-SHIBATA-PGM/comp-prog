' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        Const only As Integer = 1
        Const one As Integer = 1
        Const zero As Integer = 0
        Dim dict As New Dictionary(Of String, Integer)
        For i As Integer = zero To S.Length - 1
            If Not dict.ContainsKey(S(i)) Then
                dict(S(i)) = one
            Else
                dict(S(i)) += one
            End If
        Next
        For Each k in dict.Keys
            If dict(k) = only Then
                Console.WriteLine(InStr(S, k))
                Exit For
            End If
        Next
        Return
    End Sub
End Class