Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim N, K, M As Integer
        Dim NKM(3) As Integer
        NKM = Array.ConvertAll(Of String, Integer)(Split(Console.ReadLine()), AddressOf Integer.Parse)
        N = NKM(0) : K = NKM(1) : M = NKM(2)
        Dim A() As Integer
        A = Array.ConvertAll(Of String, Integer)(Split(Console.ReadLine()), AddressOf Integer.Parse)
        Dim accum As Integer = 0
        For Each Ai As Integer In A
            accum += Ai
        Next
        Dim ans As Integer = N * M - accum
        Console.WriteLine(If(ans < 0, 0, If(K < ans, -1, ans)))
    End Sub
End Class
