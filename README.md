# FileDownloadDsc

File Downloader for PowerShellDSC

Usage
```
Configuration Sample1
{
    Import-DSCResource -ModuleName FileDownloadDSC

    Node localhost
    {
        FileDownload MyReadme
        {
            FileName = "c:\temp\README.md"
            Url = "https://raw.githubusercontent.com/SoftwarePioniere/FileDownloadDSC/master/README.md"
        }
    }
}

```

## Publishing

```
Publish-Module -Name FileDownloadDSC -NuGetApiKey <apiKey>
```

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
