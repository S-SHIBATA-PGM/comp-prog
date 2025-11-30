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
        Dim P() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(), Function(x) Integer.Parse(x))
        Const one As Integer = 1
        Const zero As Integer = 0
        Dim max As Integer = P.Max()
        Dim cnt As Integer = P.Count(Function(a) a = max)
        If P(zero) <> max OrElse (P(zero) = max AndAlso cnt > one) Then
            Console.WriteLine(max - P(zero) + one)
        Else
            Console.WriteLine(zero)
        End If
        Return
    End Sub
End Class