Public Class Main
    Public Shared Sub Main()
        Dim arr() As Integer = sc.intArray()
        Dim H As Integer = arr(0)
        Dim N As Integer = arr(1)
        Dim A() As Integer = sc.intArray()
        Dim accum As Integer = 0
        For i As Integer = N - 1 To 0 Step -1
            accum += A(i)
        Next
        Console.WriteLine(If(accum < H, "No", "Yes"))
    End Sub
End Class

' FastScanner start
Public Class sc
    Public Shared Function nextString() As String
        Return Console.ReadLine()
    End Function
    Public Shared Function nextInt() As Integer
        Return Integer.Parse(nextString())
    End Function
    Public Shared Function nextLong() As Long
        Return Long.Parse(nextString())
    End Function
    Public Shared Function nextDouble() As Double
        Return Double.Parse(nextString())
    End Function
    Public Shared Function stringArray(Optional separator As String = " ") As String()
        Return nextString().Split(separator)
    End Function
    Public Shared Function intArray(Optional separator As String = " ") As Integer()
        Return Array.ConvertAll(Of String, Integer)(stringArray(separator), AddressOf Integer.Parse)
    End Function
    Public Shared Function longArray(Optional separator As String = " ") As Long()
        Return Array.ConvertAll(Of String, Long)(stringArray(separator), AddressOf Long.Parse)
    End Function
    Public Shared Function doubleArray(Optional separator As String = " ") As Double()
        Return Array.ConvertAll(Of String, Double)(stringArray(separator), AddressOf Double.Parse)
    End Function
End Class
' FastScanner end