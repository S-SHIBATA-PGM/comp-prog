$l1, $l2, $l3 = [uint32[]][Console]::ReadLine().Split()
Write-Host ($l1 -bxor $l2 -bxor $l3)
exit 0