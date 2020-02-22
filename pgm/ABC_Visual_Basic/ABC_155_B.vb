Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim N As Integer
        N = console.ReadLine()
        Dim A() As Integer
        A = Array.ConvertAll(Of String, Integer)(Split(Console.ReadLine()), AddressOf Integer.Parse)
        Dim flg As Boolean = True
        For Each Ai As Integer In A
            If Ai Mod 2 = 0 AndAlso Ai Mod 3 <> 0 AndAlso Ai Mod 5 <> 0 Then
                flg = False
                Exit For
            End If
        Next
        console.WriteLine(If(flg, "APPROVED", "DENIED"))
    End Sub
End Class
