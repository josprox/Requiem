[CmdletBinding()]
param(
    [ValidateSet('Name', 'Build', 'Full')]
    [string]$Part = 'Name'
)

$ErrorActionPreference = 'Stop'
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$pubspecPath = Join-Path $repoRoot 'pubspec.yaml'
$pubspec = Get-Content -LiteralPath $pubspecPath -Raw
$match = [regex]::Match(
    $pubspec,
    '(?m)^version:[ \t]*([0-9]+\.[0-9]+\.[0-9]+)(?:\+([0-9]+))?[ \t]*(?:#.*)?\r?$'
)

if (-not $match.Success) {
    throw "No valid version was found in $pubspecPath."
}

$versionName = $match.Groups[1].Value
$buildNumber = if ($match.Groups[2].Success) {
    $match.Groups[2].Value
} else {
    '0'
}

switch ($Part) {
    'Name' { $versionName }
    'Build' { $buildNumber }
    'Full' {
        if ($match.Groups[2].Success) {
            "$versionName+$buildNumber"
        } else {
            $versionName
        }
    }
}
