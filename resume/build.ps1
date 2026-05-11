# Build resume from LaTeX source
# Usage: .\build.ps1 [optional_tex_file]
# Output: ../assets/resumes/Kaustav_Purkayastha_Resume.pdf

param(
    [string]$TexFile = "resume.tex"
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$OutputDir = Join-Path $ScriptDir "..\assets\resumes"
$OutputName = "Kaustav_Purkayastha_Resume"

if (-not (Test-Path (Join-Path $ScriptDir $TexFile))) {
    Write-Host "Error: $TexFile not found in $ScriptDir" -ForegroundColor Red
    exit 1
}

Push-Location $ScriptDir
try {
    Write-Host "Compiling $TexFile with XeLaTeX..." -ForegroundColor Cyan

    # Run twice for cross-references
    & xelatex "-interaction=nonstopmode" "-jobname=$OutputName" $TexFile
    & xelatex "-interaction=nonstopmode" "-jobname=$OutputName" $TexFile

    if (Test-Path "$OutputName.pdf") {
        if (-not (Test-Path $OutputDir)) {
            New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
        }
        Move-Item -Force "$OutputName.pdf" (Join-Path $OutputDir "$OutputName.pdf")
        Write-Host "PDF generated: assets/resumes/$OutputName.pdf" -ForegroundColor Green
    } else {
        Write-Host "Error: PDF was not generated. Check the log file." -ForegroundColor Red
        exit 1
    }

    # Clean up auxiliary files
    Remove-Item -Force "$OutputName.aux", "$OutputName.log", "$OutputName.out" -ErrorAction SilentlyContinue
    Write-Host "Cleaned up auxiliary files." -ForegroundColor DarkGray
} finally {
    Pop-Location
}
