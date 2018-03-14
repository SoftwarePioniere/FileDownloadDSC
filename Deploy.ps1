#script to deploy with appveyor
#$env:PSModulePath = $env:PSModulePath + ";$(Get-Location)"

Update-ModuleManifest -Path .\FileDownloadDSC\FileDownloadDSC.psd1 -ModuleVersion $env:APPVEYOR_BUILD_VERSION
Publish-Module -Path .\FileDownloadDSC -NuGetApiKey $env:PS_GALLERY_API_KEY 
#Publish-Module -Name FileDownloadDSC -NuGetApiKey $env:PS_GALLERY_API_KEY 