Write-Host "Setting Module Path ..."
$env:PSModulePath = $env:PSModulePath + ";$(Get-Location)"
Write-Host "Environment PSModulePath:"
$env:PSModulePath

Get-Module -ListAvailable -Name FileDownloadDSC
Get-DscResource -Module FileDownloadDSC
