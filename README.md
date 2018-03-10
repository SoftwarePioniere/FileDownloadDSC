# FileDownloadDsc

File Downloader for Powershell Dsc

Usage
```
New-Item -ItemType SymbolicLink -Path   -Target $originalPath (Get-Location)

```

# Local Development


```
Run as Administrator

#Link folder to Powershell Modules Directory

$originalPath =  "$(Get-Location)\FileDownloadDSC"
$pathInModuleDir = 'C:\Program Files\WindowsPowerShell\Modules\FileDownloadDSC'

New-Item -ItemType SymbolicLink -Path $pathInModuleDir -Target $originalPath

#Unlink Folder
Remove-Item -Path $pathInModuleDir -Force -Recurse


```

$(PSScriptRoot)

# Links

https://hodgkins.io/five-tips-for-writing-dsc-resources-in-powershell-version-5
