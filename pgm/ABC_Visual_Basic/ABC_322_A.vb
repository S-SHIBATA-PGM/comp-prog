' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Console.ReadLine()
        Dim S As String = Console.ReadLine()
        Const ABC As String = "ABC"
        Const No As Integer = -1
        Const one As Integer = 1
        IF S.IndexOf(ABC) > No Then
            Console.WriteLine(S.IndexOf(ABC) + one)
        Else
            Console.WriteLine(S.IndexOf(ABC))
        End If
        Return
    End Sub
End Class