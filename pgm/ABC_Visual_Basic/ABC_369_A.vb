' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim arr() As String = Console.ReadLine().Split()
        Const one As Integer = 1
        Const two As Integer = 2
        Const three As Integer = 3
        Dim A As Integer = Integer.Parse(arr(0))
        Dim B As Integer = Integer.Parse(arr(1))
        IF A = B Then
            Console.WriteLine(one)
        ElseIf Math.Abs(A - B) Mod 2 = 1 Then
            Console.WriteLine(two)
        Else
            Console.WriteLine(three)
        End If
        Return
    End Sub
End Class