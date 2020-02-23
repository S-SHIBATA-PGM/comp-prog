Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim A, B, C As Integer
        Dim arr(3) As String
        arr = Split(Console.ReadLine())
        A = arr(0) : B = arr(1) : C = arr(2)
        Dim flg As Boolean = False
        If A = B AndAlso B <> C Then
            flg = True
        End If
        If B = C AndAlso C <> A Then
            flg = True
        End If
        If C = A AndAlso A <> B Then
            flg = True
        End If
        Console.WriteLine(If(flg, "Yes", "No"))
    End Sub
End Class
