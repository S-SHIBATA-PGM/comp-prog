' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Const zero As Integer = 0
        Const one As Integer = 1
        Dim i As Integer = one
        Dim cnt As Integer = zero
        Do
            Dim S As String = Console.ReadLine()
            If S Is Nothing Then Exit Do
            If Len(S) = i Then
                cnt += one
            End If
            i += one
        Loop
        Console.WriteLine(cnt)
        Return
    End Sub
End Class