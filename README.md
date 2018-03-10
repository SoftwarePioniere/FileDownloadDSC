# FileDownloadDsc

File Downloader for Powershell Dsc

Usage
```

```

## Publishing

Publish-Module -Name FileDownloadDSC -NuGetApiKey <apiKey>

## Local Development

```
Run as Administrator

#Link folder to Powershell Modules Directory

$originalPath =  "$(Get-Location)\FileDownloadDSC"
$pathInModuleDir = 'C:\Program Files\WindowsPowerShell\Modules\FileDownloadDSC'

New-Item -ItemType SymbolicLink -Path $pathInModuleDir -Target $originalPath

#Unlink Folder
Remove-Item -Path $pathInModuleDir -Force -Recurse

```

## Links

https://hodgkins.io/five-tips-for-writing-dsc-resources-in-powershell-version-5
