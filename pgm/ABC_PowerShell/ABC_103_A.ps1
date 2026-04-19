$A = [uint32[]][Console]::ReadLine().Split()
Write-Host (
    [System.Linq.Enumerable]::max([System.Collections.Generic.IEnumerable[uint32]]$A) -
    [System.Linq.Enumerable]::min([System.Collections.Generic.IEnumerable[uint32]]$A))
exit 0