' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        Dim hs As New HashSet(Of Char)(S)
        If hs.Count() <> 2
            Console.WriteLine("No")
        Else
            Dim cnt = 0
            For Each c As Char In hs
                If S.Count(function (x) x = c) = 2
                    cnt += 1
                End If
            Next
            If cnt = 2
                Console.WriteLine("Yes")
            Else
                Console.WriteLine("No")
            End If
        End If
        Return
    End Sub
End Class