' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        Const lt As String = "<"
        Const eq As String = "="
        Const gt As String = ">"
        Const Yes As String ="Yes"
        Const No As String = "No"

        If S(0) = lt AndAlso
            S.Substring(1, Len(S) - 2) = StrDup(Len(S) - 2, eq) AndAlso
            S.Substring(Len(S) - 1, 1) = gt THEN
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class