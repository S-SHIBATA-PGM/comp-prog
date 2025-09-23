' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Integer.parse(Console.ReadLine())
        Dim arr As String = Console.ReadLine()
        Const Takahashi As String = "Takahashi"
        Const Aoki As String = "Aoki"
        Const Draw As String = "Draw"
        Const one As Integer = 1
        Const zero As Integer = 0
        Const first As Integer = 0
        Const second As Integer = 1
        Dim X(N - one), Y(N - one) As Integer
        Dim i As Integer = zero
        While (Not arr Is Nothing)
            X(i) = Integer.parse(arr.Split()(first))
            Y(i) = Integer.parse(arr.Split()(second))
            i += one
            arr = Console.ReadLine()
        End While
        If X.Sum() > Y.Sum() Then
            Console.WriteLine(Takahashi)
        ElseIf X.Sum() = Y.Sum() Then
            Console.WriteLine(Draw)
        Else
            Console.WriteLine(Aoki)
        End If
        Return
    End Sub
End Class