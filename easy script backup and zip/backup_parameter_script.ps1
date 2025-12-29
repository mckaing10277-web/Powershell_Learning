Add-Type -AssemblyName System.Windows.Forms

# ---- Pick files (multi-select) ----
$FileDialog = New-Object System.Windows.Forms.OpenFileDialog
$FileDialog.Title = "Select files to back up"
$FileDialog.InitialDirectory = [Environment]::GetFolderPath("Desktop")
$FileDialog.Filter = "All files (*.*)|*.*"
$FileDialog.Multiselect = $true

if ($FileDialog.ShowDialog() -ne [System.Windows.Forms.DialogResult]::OK) {
    Write-Host "No files selected."
    Pause
    exit
}

# ---- Pick ZIP save location ----
$Date = Get-Date -Format "yyyy-MM-dd_HHmmss"

$SaveDialog = New-Object System.Windows.Forms.SaveFileDialog
$SaveDialog.Title = "Save backup ZIP"
$SaveDialog.InitialDirectory = [Environment]::GetFolderPath("Desktop")
$SaveDialog.Filter = "ZIP files (*.zip)|*.zip"
$SaveDialog.FileName = "Backup-$Date.zip"

if ($SaveDialog.ShowDialog() -ne [System.Windows.Forms.DialogResult]::OK) {
    Write-Host "Backup cancelled."
    Pause
    exit
}

$ZipPath = $SaveDialog.FileName

Write-Host ""
Write-Host "Creating backup:"
Write-Host $ZipPath
Write-Host ""

# ---- Compress ALL selected files into ONE ZIP ----
Compress-Archive `
    -Path $FileDialog.FileNames `
    -DestinationPath $ZipPath `
    -CompressionLevel Optimal `
    -Force

Write-Host ""
Write-Host "Backup completed successfully."
Pause






