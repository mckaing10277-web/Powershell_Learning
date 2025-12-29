param(
    [string]$SourcePath,
    [string]$DestinationPath,
    [string][Parameter(Mandatory = $true)]$ZipFileName 
)


# Your script logic here
Write-Host "Source: $SourcePath"
Write-Host "Destination: $DestinationPath"
Write-Host "Zip file: $ZipFileName"