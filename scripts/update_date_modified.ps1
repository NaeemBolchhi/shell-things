param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$Paths
)

$now = Get-Date

foreach ($path in $Paths) {

    $item = Get-Item -LiteralPath $path -Force

    if ($item.PSIsContainer) {

        # Touch every file and folder beneath it
        Get-ChildItem -LiteralPath $path -Recurse -Force |
            ForEach-Object { $_.LastWriteTime = $now }

        # Touch the selected folder itself
        $item.LastWriteTime = $now
    }
    else {

        # Touch the selected file
        $item.LastWriteTime = $now
    }
}