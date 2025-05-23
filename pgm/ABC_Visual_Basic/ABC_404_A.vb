' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S() As Char
        S = Console.ReadLine().ToCharArray()
        Const a As Integer = Asc("a")
        Const z As Integer = Asc("z")
        For i As Integer = a To z
            Dim breakFlg As Boolean = False
            For Each c As Char in S
                If Asc(c) = i Then
                    breakFlg = True
                    Exit For
                End If
            Next
            If Not breakFlg Then
                Console.WriteLine(Chr(i))
                Exit For
            End If
        Next
        Return
    End Sub
End Class