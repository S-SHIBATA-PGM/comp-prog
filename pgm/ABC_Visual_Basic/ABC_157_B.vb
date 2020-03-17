Class Main
    Shared Readonly NUM As Integer = 3
    Shared Readonly MAX_N As Integer = 100
    Shared Function check(ByRef ty() As Integer, ByRef yx() As Integer, ByVal n As Integer) As Boolean
        Dim flg As Boolean = False
        ty(yx(n)) += 1
        If ty(yx(n)) = NUM
            flg = True
        End If
        Return flg
    End Function

    Shared Function check_naname(ByRef nnm() As Integer, ByRef y() As Integer, ByRef x() As Integer, ByVal n As Integer) As Boolean
        Dim flg As Boolean = False
        If y(n) = x(n)
            nnm(0) += 1
            If nnm(0) = NUM
                flg = True
            End If
        End If
        If y(n) = NUM - x(n) -1
            nnm(1) += 1
            If nnm(1) = NUM
                flg = True
            End If
        End If
        Return flg
    End Function

    Public Shared Sub Main()
        Dim y(MAX_N) As Integer
        Dim x(MAX_N) As Integer
        For i As Integer = 0 To MAX_N - 1
            y(i) = -1
            x(i) = -1
        Next
        For i As Integer = 0 To NUM - 1
            Dim A() As Integer = sc.intArray()
            For j As Integer = 0 To NUM - 1
                A(j) = A(j) - 1
                y(A(j)) = i
                x(A(j)) = j
            Next
        Next
        Dim tate(NUM) As Integer
        Dim yoko(NUM) As Integer
        Dim naname(2) As Integer
        Dim N As Integer = sc.nextInt()
        Dim flg As Boolean = False
        For i As Integer = 0 To N - 1
            Dim cur As Integer = sc.nextInt()
            cur -= 1
            If y(cur) = -1
                Continue For
            End If
            flg = check(tate, y, cur)
            If flg
                Exit For
            End If
            flg = check(yoko, x, cur)
            If flg
                Exit For
            End If
            flg = check_naname(naname, y, x, cur)
            If flg
                Exit For
            End If
        Next
        Console.WriteLine(If(flg, "Yes", "No"))
    End Sub
End Class

' FastScanner start
Class sc
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