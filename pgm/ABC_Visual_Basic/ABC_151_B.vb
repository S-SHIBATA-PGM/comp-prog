Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim N, K, M As Integer
        Dim arr() as String = Split(Console.ReadLine())
        Dim NKM() As Integer = Array.ConvertAll(Of String, Integer)(arr, AddressOf Integer.Parse)
        N = NKM(0) : K = NKM(1) : M = NKM(2)
        arr = Split(Console.Readline())
        Dim A() As Integer = Array.ConvertAll(Of String, Integer)(arr, AddressOf Integer.Parse)
        Dim accum As Integer = 0
        For Each Ai As Integer in A
            accum += Ai
        Next
        Dim ans As Integer = N * M - accum
        Console.WriteLine(If(ans < 0, 0, If(K < ans, -1, ans)))
    End Sub
End Class
