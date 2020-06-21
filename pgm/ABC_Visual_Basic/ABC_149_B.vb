' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim A, B, K As Long
        Dim arr() As String
        arr = Split(Console.ReadLine())
        A = arr(0) : B = arr(1) : K = arr(2)
        Console.WriteLine(CStr(A - Math.Min(A, K)) & " " & CStr(B - Math.Min(B, K - Math.min(A, K))))
        Return
    End Sub
End Class
