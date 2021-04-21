#!/usr/bin/env pwsh

# Remove node_modules
$dirs = Get-ChildItem -Path . -Filter node_modules -Recurse
foreach ($dir in $dirs) {
    if (Test-Path -Path $dir.FullName) {
        Write-Host "Removing $($dir.FullName)"
        Remove-Item -Recurse -Force -Path $dir.FullName
    }
}