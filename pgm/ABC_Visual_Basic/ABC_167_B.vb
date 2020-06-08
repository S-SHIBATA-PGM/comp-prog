' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim A, B, C, K As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        A = arr(0) : B = arr(1) : C = arr(2) : K = arr(3)
        If K <= A Then
            Console.WriteLine(K)
        ElseIf K <= A + B Then
            Console.WriteLine(A)
        Else
            Console.WriteLine(A - (K - A - B))
        End If
        Return
    End Sub
End Class
