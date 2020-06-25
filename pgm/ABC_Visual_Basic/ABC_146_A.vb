' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        ' Dim ary As String() = {"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"}
        Console.WriteLine(7 - Array.IndexOf({"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"}, S))
        Return
    End Sub
End Class
