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
        Const gt As String = ">"
        Const A As String = "A"
        Const B As String = "B"
        Const C As String = "C"
        Dim ABC As New List(Of String)
        ABC.Add(A)
        ABC.Add(B)
        ABC.Add(C)
        If gt.Equals (arr(0)) Then
            If ABC.IndexOf(A) < ABC.IndexOf(B) Then
                ABC.RemoveAt(ABC.IndexOf(B))
                ABC.Insert(ABC.IndexOf(A), B)
            End If
        Else
            If ABC.IndexOf(B) < ABC.IndexOf(A) Then
                ABC.RemoveAt(ABC.IndexOf(A))
                ABC.Insert(ABC.IndexOf(B), A)
            End If
        End If
        If gt.Equals (arr(1)) Then
            If ABC.IndexOf(A) < ABC.IndexOf(C) Then
                ABC.RemoveAt(ABC.IndexOf(C))
                ABC.Insert(ABC.IndexOf(A), C)
            End If
        Else
            If ABC.IndexOf(C) < ABC.IndexOf(A) Then
                ABC.RemoveAt(ABC.IndexOf(A))
                ABC.Insert(ABC.IndexOf(C), A)
            End If
        End If
        If (gt.equals (arr(2)))
            If ABC.IndexOf(B) < ABC.IndexOf(C) Then
                ABC.RemoveAt(ABC.indexOf(C))
                ABC.Insert(ABC.indexOf(B), C)
            End If
        Else
            If ABC.IndexOf(C) < ABC.IndexOf(B) Then
                ABC.RemoveAt(ABC.indexOf(B))
                ABC.Insert(ABC.indexOf(C), B)
            End If
        End If
        Console.WriteLine(ABC(1))
        Return
    End Sub
End Class