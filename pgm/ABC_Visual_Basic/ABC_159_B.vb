' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Function checkPal(ByVal s As String) As Boolean
        return s = StrReverse(s)
    End Function

    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        Dim str As String = S.Substring(0, Math.floor(S.Length / 2))
        Console.WriteLine(If(checkPal(S) AndAlso checkPal(str),"Yes", "No"))
    End Sub
End Class
