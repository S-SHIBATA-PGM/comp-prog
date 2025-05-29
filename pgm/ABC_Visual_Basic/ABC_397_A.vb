' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim X As Double = Ctype(Console.readLine(), Double)
        Const high As Integer = 1
        Const fever As Integer = 2
        Const normal As Integer = 3
        Const dHigh As Double = 38.0
        Const dNormal As Double = 37.5
        If X >= dHigh Then
            Console.WriteLine(high)
        ElseIf X >= dNormal Then
            Console.WriteLine(fever)
        Else
            Console.WriteLine(normal)
        End If
        Return
    End Sub
End Class