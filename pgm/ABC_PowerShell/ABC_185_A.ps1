using namespace System.Linq
$A = [int[]][Console]::ReadLine().Split()
Write-Host ([Enumerable]::Min($A))
exit 0