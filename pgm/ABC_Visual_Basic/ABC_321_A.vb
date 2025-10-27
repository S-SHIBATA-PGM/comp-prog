' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As String = Console.ReadLine()
        Const Yes As String = "Yes"
        Const No As String = "No"
        Const one As Integer = 1
        Const ten As Integer = 10
        Const zero As Integer = 0
        Dim pre As Integer = ten
        Dim decreaseFlg As Boolean = True
        For i As Integer = zero To N.Length - one
            IF Val(N.Chars(i)) >= pre Then
                decreaseFlg = False
                Exit For
            End If
            pre = Val(N.Chars(i))
        Next
        IF decreaseFlg Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class