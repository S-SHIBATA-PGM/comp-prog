' Imports System.Collections.Generic
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        Dim O As String = "RUD"
        Dim E As String = "LUD"
        Dim flg As Boolean = True
        For idx As Integer = 0 To S.Length - 1
            If 1 = (idx + 1) Mod 2 AndAlso -1 = O.IndexOf(S(idx))
                flg = False
                Exit For
            End If
            If 1 = idx Mod 2 AndAlso -1 = E.IndexOf(S(idx))
                flg = False
                Exit For
            End If
        Next
        Console.WriteLine(If(flg, "Yes", "No"))
        Return
    End Sub
End Class