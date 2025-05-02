$S = [char[]][Console]::ReadLine().split(" ").ToCharArray()
@(0..($S.Length - 1)) | ForEach-Object {
    $i = $_
    $diff = $true
    @(0..($S.Length - 1)) | ForEach-Object {
        if ($i -ne $_ -and $S[$i] -eq $S[$_]) {
            $diff = $false
            $diff > $null
        }
    }
    if ($diff) {
        Write-Host ($i + 1)
    }
}