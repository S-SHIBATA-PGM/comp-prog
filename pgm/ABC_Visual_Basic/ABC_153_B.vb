Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim H, N As Integer
        Dim arr(2) As String
        arr = Split(Console.ReadLine())
        H = arr(0) : N = arr(1)
        Dim A() As Integer = Array.ConvertAll(Of String, Integer) _
            (Split(Console.ReadLine()), AddressOf Integer.Parse)
        Array.Sort(A)
        Dim accum As Integer = 0
        Dim flg As Boolean = False
        For i As Integer = N - 1 To 0 Step -1
            accum += A(i)
            If H <= accum Then
                flg = True
                Exit For
            End If
        Next
        Console.WriteLine(If(flg, "Yes", "No"))
    End Sub
End Class
