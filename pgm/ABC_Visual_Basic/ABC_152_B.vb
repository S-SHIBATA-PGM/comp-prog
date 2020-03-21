
Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim a, b As Integer
        Dim arr(2) As String
        arr = Split(Console.ReadLine())
        a = arr(0) : b = arr(1)
        If a < b Then
            Console.WriteLine(New String(arr(0)(0), b))
        Else
            Console.WriteLine(New String(arr(1)(0), a))
        End If
    End Sub
End Class