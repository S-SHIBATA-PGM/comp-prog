' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim X, Y, Z As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        X = arr(0) : Y = arr(1) : Z = arr(2)
        Console.WriteLine(Cstr(Z) + " " + CStr(X) + " " + CStr(Y))
    End Sub
End Class
