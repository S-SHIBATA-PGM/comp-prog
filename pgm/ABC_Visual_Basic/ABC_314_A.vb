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
        Const two As Integer = 2
        Const zero As Integer = 0
        Const pi As String =
        "3.1415926535897932384626433832795028841971693993751" _
        + "058209749445923078164062862089986280348253421170679"
        Console.WriteLine(pi.SubString(zero, N + two))
        Return
    End Sub
End Class