Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim a, b As Char
        Dim arr(2) As String
        arr = Split(Console.ReadLine())
        a = arr(0) : b = arr(1)
        If Integer.Parse(a) < Integer.Parse(b) Then
            Console.WriteLine(New String(a, Integer.Parse(b)))
        Else
            Console.WriteLine(New String(b, Integer.Parse(a)))
        End If
    End Sub
End Class
