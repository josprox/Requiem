[CmdletBinding()]
param(
    [switch]$SkipFlutterBuild,
    [string]$OutputDirectory
)

$ErrorActionPreference = 'Stop'
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$versionScript = Join-Path $PSScriptRoot 'get_pubspec_version.ps1'
$versionName = & $versionScript -Part Name
$buildNumber = & $versionScript -Part Build

if (-not $OutputDirectory) {
    $OutputDirectory = Join-Path $repoRoot 'dist'
}

$OutputDirectory = [System.IO.Path]::GetFullPath($OutputDirectory)
New-Item -ItemType Directory -Path $OutputDirectory -Force | Out-Null

Push-Location $repoRoot
try {
    if (-not $SkipFlutterBuild) {
        flutter config --enable-windows-desktop
        flutter pub get
        flutter build windows --release `
            --build-name="$versionName" `
            --build-number="$buildNumber"

        if ($LASTEXITCODE -ne 0) {
            throw 'Flutter Windows compilation failed.'
        }
    }

    $isccCommand = Get-Command ISCC.exe -ErrorAction SilentlyContinue
    $isccCandidates = @(
        if ($isccCommand) { $isccCommand.Source }
        (Join-Path ${env:ProgramFiles(x86)} 'Inno Setup 6\ISCC.exe')
        (Join-Path $env:ProgramFiles 'Inno Setup 6\ISCC.exe')
    ) | Where-Object { $_ -and (Test-Path -LiteralPath $_) }

    $iscc = $isccCandidates | Select-Object -First 1
    if (-not $iscc) {
        throw 'ISCC.exe was not found. Install Inno Setup 6 and try again.'
    }

    $scriptPath = Join-Path $PSScriptRoot 'create_installer.iss'
    & $iscc "/DOutputDirectory=$OutputDirectory" $scriptPath
    if ($LASTEXITCODE -ne 0) {
        throw "Inno Setup compilation failed with exit code $LASTEXITCODE."
    }

    $installerPath = Join-Path $OutputDirectory "Requiem-Tools-Setup-v$versionName.exe"
    if (-not (Test-Path -LiteralPath $installerPath)) {
        throw "Inno Setup did not produce the expected installer: $installerPath"
    }

    Write-Output $installerPath
} finally {
    Pop-Location
}
