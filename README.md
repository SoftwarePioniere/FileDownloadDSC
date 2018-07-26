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

## Development

```powershell
#Start Local Shell
powershell
.\Prepare-Env.ps1

#Analyze Module
Invoke-ScriptAnalyzer -Path .\FileDownloadDSC\
Test-xDscResource .\FileDownloadDSC\DSCResources\FileDownload
Test-xDscSchema .\FileDownloadDSC\DSCResources\FileDownload\FileDownload.schema.mof

```

## Links

* https://hodgkins.io/five-tips-for-writing-dsc-resources-in-powershell-version-5
* https://kevinmarquette.github.io/2017-05-27-Powershell-module-building-basics/?utm_source=blog&utm_medium=blog&utm_content=psrepository
* https://docs.microsoft.com/en-us/powershell/dsc/resourceauthoringchecklist
