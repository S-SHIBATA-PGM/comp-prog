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
        Dim d As New Dictionary(Of String, Integer)
        d.Add("tourist", 3858)
        d.Add("ksun48", 3679)
        d.Add("Benq", 3658)
        d.Add("Um_nik", 3648)
        d.Add("apiad", 3638)
        d.Add("Stonefeang", 3630)
        d.Add("ecnerwala", 3613)
        d.Add("mnbvmar", 3555)
        d.Add("newbiedmy", 3516)
        d.Add("semiexp", 3481)
        Console.WriteLine(d(S))
        Return
    End Sub
End Class