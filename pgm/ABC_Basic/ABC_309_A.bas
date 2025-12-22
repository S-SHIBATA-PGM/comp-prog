Dim As Integer A, B
Input A, B
Const Yes As String = "Yes"
Const No As String = "No"
Const one As Integer = 1
Const two As Integer = 2
Const three As Integer = 3
Const four As Integer = 4
Const five As Integer = 5
Const six As Integer = 6
Const seven As Integer = 7
Const eight As Integer = 8
Const nine As Integer = 9
Const zero As Integer = 0
Dim N(three - one, three - one) As Integer
N(zero, zero) = one
N(zero, one) = two
N(zero, two) = three
N(one, zero) = four
N(one, one) = five
N(one, two) = six
N(two, zero) = seven
N(two, one) = eight
N(two, two) = nine
' 右、左
Const drn As Integer = two - one
Dim dy(drn) As Integer
Dim dx(drn) As Integer
dy(zero) = zero
dy(one) = zero
dx(zero) = one
dx(one) = - one
Const H As Integer = three
Const W As Integer = three
Dim breakFlg As Boolean = False
Dim adjacent As String = No
For y As Integer = zero To H - one
    If breakFlg Then
        Exit For
    End If
    For x As Integer = zero To W - one
        If breakFlg Then
            Exit For
        End If
        If N(y, x) = A Then
            For k As Integer = zero To drn - one
                If breakFlg Then
                    Exit For
                End If
                Dim ny As Integer = y + dy(k)
                Dim nx As Integer = x + dx(k)
                If ny < zero OrElse H <= ny OrElse nx < zero OrElse W <= nx Then
                ElseIf N(ny, nx) = B Then
                    breakFlg = True
                    adjacent = Yes
                End If
            Next
            breakFlg = True
        End If
    Next
Next
Print adjacent
End 0