' Imports System.Collections.Generic
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Console.ReadLine()
        Dim flg As Boolean = False
        For i As Integer = 0 To 9
            For j As Integer = 0 To 9
                If i * j = N Then
                    flg = True
                    Exit For
                End If
            Next
            If flg Then
                Exit For
            End If
        Next
        Console.WriteLine(If(flg, "Yes", "No"))
        Return
    End Sub
End Class